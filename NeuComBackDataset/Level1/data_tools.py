import argparse
import hashlib
import os
import json
from pathlib import Path
from collections import defaultdict, OrderedDict
import subprocess
from typing import Literal, Dict
import ray
import io
import contextlib
import math
import random

PACKAGE_PATH = Path(__file__).resolve().parent
DATA_PATH = str(PACKAGE_PATH)
EXEBENCH_PATH = f"{DATA_PATH}/exebench"

def diff_io(observed_output, expected_output) -> bool:
    if type(observed_output) is not type(expected_output):
        return False
    if isinstance(observed_output, list):
        if len(observed_output) != len(expected_output):
            return False
        for e1, e2 in zip(observed_output, expected_output):
            ok = diff_io(e1, e2)
            if not ok:
                return False
    elif isinstance(observed_output, dict):
        for key in observed_output:
            if key not in expected_output:
                return False
            ok = diff_io(observed_output[key], expected_output[key])
            if not ok:
                return False
    elif isinstance(observed_output, float):
        ok = math.isclose(observed_output, expected_output)
        if not ok:
            return False
    else:
        ok = observed_output == expected_output
        if not ok:
            return False
    return True

def load_data(file_path):
    grouped_data = defaultdict(list)
    with open(file_path, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            grouped_data[record["func_name"]].append(record)  # 将记录追加到对应的 func_name 下
    # 转为普通字典
    return dict(grouped_data)

def save_data(save_path, data, results):
    func_names = get_func_names()
    output_lines = []
    for func_name in func_names:  # 确保 func_name 按顺序排列
        func_data_list = data[func_name]
        for func_data in sorted(func_data_list, key=lambda x: x["repeat"]):  # 按 repeat 排序
            repeat = func_data["repeat"]
            if repeat in results[func_name]:
                func_data["result"] = results[func_name][repeat]
            # 重构字段顺序：将 result 移到 code 之前
            reordered_data = OrderedDict()
            for key, value in func_data.items():
                if key == "code":
                    # 插入 result 字段在 code 之前
                    if "result" in func_data:
                        reordered_data["result"] = func_data["result"]
                reordered_data[key] = value  # 按原顺序插入其他字段
            # 转为 JSON 字符串
            output_lines.append(json.dumps(reordered_data))
    # 写入文件
    with open(save_path, "w") as f:
        f.write("\n".join(output_lines))

def get_func_names(split=None):
    """
    生成函数名列表：
      - 编号打乱后取前 200；
      - 按 120:40:40 划分为 train/test/valid；
      - split 参数可选 'train'、'test'、'valid'，否则返回全部 200 个。
    随机种子固定为 12345，保证可复现。
    """

    all_ids = [1437, 545, 490, 310, 592, 667, 1147, 642, 501, 1529, 1588, 852, 840, 736, 1554, 1605, 1549, 1339, 542, 628, 712, 249, 193, 774, 227, 152, 82, 138, 1572, 400, 684, 1040, 1038, 74, 553, 1590, 620, 1306, 818, 1595, 326, 347, 1395, 402, 195, 467, 1257, 983, 788, 94, 947, 95, 1618, 1215, 302, 460, 887, 1382, 461, 422, 752, 929, 519, 969, 899, 623, 230, 779, 593, 1134, 674, 1053, 643, 801, 1004, 826, 164, 100, 562, 97, 1024, 477, 599, 1505, 577, 718, 1425, 759, 1579, 46, 1173, 1364, 1365, 255, 989, 429, 1537, 437, 897, 53, 1521, 1201, 596, 92, 1303, 1199, 762, 387, 563, 312, 251, 1592, 735, 882, 409, 600, 398, 38, 239, 20, 544, 1193, 115, 710, 1482, 434, 416, 1148, 952, 1487, 314, 880, 167, 1576, 664, 827, 831, 928, 618, 17, 36, 1559, 1205, 253, 984, 317, 830, 329, 219, 1341, 790, 749, 878, 1312, 1536, 170, 1608, 786, 528, 297, 1407, 277, 862, 560, 1570, 1070, 482, 328, 284, 1446, 147, 760, 1080, 1361, 638, 1216, 473, 814, 584, 362, 765, 522, 267, 1017, 1323, 55, 296, 480, 1426, 838, 1609, 714, 132, 591, 1596, 1553, 166, 340, 685, 1092]

    # 固定随机数种子
    rng = random.Random(12345)
    rng.shuffle(all_ids)
    selected = all_ids[:200]

    # 划分比例 120:40:40
    split_data = {
        'train': [i for i in selected[:120]],
        'test' : [i for i in selected[120:160]],
        'valid': [i for i in selected[160:200]],
    }
    # print(split_data)

    if split:
        return split_data[split]
    # 不传 split 时，返回 train + test + valid
    return split_data['train'] + split_data['test'] + split_data['valid']

def get_test_ir(test_name, optimize=3):
    # 构造文件名和路径
    file_path = EXEBENCH_PATH + f"/kernel{test_name}_O{optimize}.ll"

    # 检查文件是否存在
    if not os.path.exists(file_path):
        raise FileNotFoundError(f"The file {file_path} does not exist.")

    # 读取文件内容
    with open(file_path, 'r', encoding='utf-8') as file:
        ir_code = file.read()

    return ir_code

def get_test_asm(test_name, optimize=3):
    raise NotImplementedError()

@ray.remote(num_cpus=16)
def analyse_func(task, func_name: str, test_code: str, work_dir: str, timeout: int = 180, reference_params: Dict = None, repeat: int = 0):
    output_buffer = io.StringIO()  # 用于捕获 print 输出
    # 捕获输出上下文
    with contextlib.redirect_stdout(output_buffer):
        dataset_path = DATA_PATH

        if task == "IR":
            suffix = "ll"
        elif task == "asm":
            suffix = "s"
        else:
            print("Wrong task!")
            exit()

        # 将汇编代码写入临时文件
        test_file_path = os.path.join(work_dir, f"{func_name}_IR2asm_O3_llm.{suffix}")
        with open(test_file_path, "w") as f:
            f.write(test_code)
        print(f"Written test code to {test_file_path}")

        # 第一步：将汇编文件编译成 .o 中间文件
        obj_file_path = os.path.join(work_dir, f"{func_name}_IR2asm_O3_llm.o")
        assemble_command = [
            "clang", "-w", "-O3", "-o", obj_file_path, "-c", test_file_path,
        ]
        compilation_success = False
        compilation_error = ""
        try:
            subprocess.run(assemble_command, check=True, stderr=subprocess.PIPE, errors='replace')
            print(f"Assembled {test_file_path} to {obj_file_path}")
        except subprocess.CalledProcessError as e:
            print(f"Error assembling {test_file_path}: {e}")
            # compilation_error = e.stderr.decode('utf-8')
            compilation_error = e.stderr
            return {
                "func_name": func_name,
                "compilation": compilation_success,
                "execution": False,
                "timing": {
                    "current": None,
                    "O0": 0.,
                    "O3": 0.,
                },
                "compilation_error": compilation_error,
                "execution_error": "",
            }, output_buffer.getvalue()


        # 第二步：将 .o 中间文件和其他文件一起编译成可执行文件
        output_file_path = os.path.join(work_dir, f"{func_name}_IR2asm_O3_llm.out")
        main_obj_file_path = f"{EXEBENCH_PATH}/main{func_name}.o"
        compile_command = [
            "clang++",
            obj_file_path,
            main_obj_file_path,
            "-o", output_file_path
        ]
        try:
            subprocess.run(compile_command, check=True, stderr=subprocess.PIPE, errors='replace')
            print(f"Compiled {obj_file_path} and other files to {output_file_path}")
            compilation_success = True
        except subprocess.CalledProcessError as e:
            print(f"Error compiling {obj_file_path} and other files: {e}")
            # compilation_error = e.stderr.decode('utf-8')
            compilation_error = e.stderr
            return {
                "func_name": func_name,
                "compilation": False,
                "execution": False,
                "timing": {
                    "current": None,
                    "O0": 0.,
                    "O3": 0.,
                },
                "compilation_error": compilation_error,
                "execution_error": "",
            }, output_buffer.getvalue()

        # 运行生成的可执行文件一次并捕获输出

        get_result_command = f"{output_file_path} {EXEBENCH_PATH}/test{func_name}.in {work_dir}/test{func_name}.out"
        try:
            run_result = subprocess.run(get_result_command, shell=True, capture_output=True, timeout=timeout)
            with open(f"{work_dir}/test{func_name}.out", "r") as f:
                output = json.load(f)
            with open(f"{EXEBENCH_PATH}/test{func_name}.ref", "r") as f:
                standard = json.load(f)
            if diff_io(output, standard):
                execution_success = True
                print("verification good")
            else:
                execution_success = False
                execution_error = "Output is wrong"
        except subprocess.TimeoutExpired:
            print(f"Function {func_name} timed out after {timeout} seconds (Run 1)")
            output = None
            execution_success = False
            execution_error = "Program timed out"
        except subprocess.CalledProcessError as e:
            print(f"Error running {output_file_path} (Run 1): {e}")
            output = None
            execution_success = False
            execution_error = str(e)

        # 如果预运行失败，直接返回
        if not execution_success:
            return {
                "func_name": func_name,
                "compilation": compilation_success,
                "execution": execution_success,
                "timing": {
                    "current": None,
                    "O0": 0.,
                    "O3": 0.,
                },
                "compilation_error": compilation_error,
                "execution_error": execution_error,
            }, output_buffer.getvalue()


        return {
            "func_name": func_name,
            "compilation": compilation_success,
            "execution": execution_success,
            "timing": {
                "current": 0.,
                "O0": 0.,
                "O3": 0.,
            },
            "compilation_error": compilation_error,
            "execution_error": "",
        }, output_buffer.getvalue()

if __name__ == "__main__":
    if not ray.is_initialized():
        ray.init()
    _, out = analyse_func("IR", 4, '''; ModuleID = \'../benchmarks/fine_grained/exebench/kernel4.c\'
source_filename = "../benchmarks/fine_grained/exebench/kernel4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_err = dso_local global i32 0, align 4
@last_type = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgio_error_code(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr @last_err, align 4
  %6 = load ptr, ptr %3, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr @last_err, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  store i32 0, ptr %10, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, ptr @last_type, align 4
  %13 = load ptr, ptr %4, align 8
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
''', "tmp")
    print(out)
