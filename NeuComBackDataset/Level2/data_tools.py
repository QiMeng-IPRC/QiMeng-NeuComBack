import argparse
import os
import json
from pathlib import Path
from collections import defaultdict, OrderedDict
import subprocess
from typing import Literal, Dict
import ray
import io
import contextlib

PACKAGE_PATH = Path(__file__).resolve().parent
DATA_PATH = str(PACKAGE_PATH)
NEWTSVC_PATH = f"{DATA_PATH}/newTSVC"

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
    split_data = {'train': ['s313', 's1213', 's118', 's322', 's212', 's323', 's176', 's233', 's126', 's123', 's2711', 's258', 'vpvts', 's315', 's441', 's318', 's161', 's4115', 's253', 's279', 's151', 's244', 's342', 'vsumr', 's255', 's254', 's1111', 's131', 's128', 's316', 's4117', 's4112', 'vpvpv', 's141', 's3111', 's276', 's353', 's1281', 's115', 's1115', 's424', 's124', 's3251', 's125', 'vif', 's122', 's271', 's423', 's1119', 's314', 's453', 's242', 's162', 's114', 's121', 's2712', 's132', 's3110', 's421', 's292', 's278', 's211', 's1113', 's241', 's2233', 's431', 's312', 's31111', 's352', 's1421', 's277', 's256', 's2244', 's2710', 's4116', 's343', 's232', 's293', 's2101', 'vtvtv', 's1221', 's111', 's235', 's317', 's1251', 's4114', 's2102', 'vbor', 's1351', 's1112', 's3113', 's481', 's471', 's252', 'vpv', 'va', 's272', 's000', 's257', 's243', 's291'], 'valid': ['s482', 's321', 's273', 's175', 's173', 's2275', 's2111', 'vtv', 'vas', 's442', 's221', 's1161', 's174', 's443', 's1279', 's13110', 's127', 's261', 's281', 'vpvtv', 's311', 's171', 's274', 's275', 's251'], 'test': ['s116', 's113', 's452', 's332', 's451', 's172', 's319', 's341', 's1244', 's152', 's491', 's4121', 's1232', 's112', 's119', 's2251', 'vag', 's331', 'vdotr', 's351', 's222', 's4113', 's422', 's231', 's3112']}
    if split:
        func_names = split_data[split]
    else:
        func_names = ['s000', 's111', 's1111', 's1112', 's1113', 's1115', 's1119', 's112', 's113', 's114', 's115', 's116', 's1161', 's118', 's119', 's121', 's1213', 's122', 's1221', 's123', 's1232', 's124', 's1244', 's125', 's1251', 's126', 's127', 's1279', 's128', 's1281', 's131', 's13110', 's132', 's1351', 's141', 's1421', 's151', 's152', 's161', 's162', 's171', 's172', 's173', 's174', 's175', 's176', 's2101', 's2102', 's211', 's2111', 's212', 's221', 's222', 's2233', 's2244', 's2251', 's2275', 's231', 's232', 's233', 's235', 's241', 's242', 's243', 's244', 's251', 's252', 's253', 's254', 's255', 's256', 's257', 's258', 's261', 's271', 's2710', 's2711', 's2712', 's272', 's273', 's274', 's275', 's276', 's277', 's278', 's279', 's281', 's291', 's292', 's293', 's311', 's3110', 's3111', 's31111', 's3112', 's3113', 's312', 's313', 's314', 's315', 's316', 's317', 's318', 's319', 's321', 's322', 's323', 's3251', 's331', 's332', 's341', 's342', 's343', 's351', 's352', 's353', 's4112', 's4113', 's4114', 's4115', 's4116', 's4117', 's4121', 's421', 's422', 's423', 's424', 's431', 's441', 's442', 's443', 's451', 's452', 's453', 's471', 's481', 's482', 's491', 'va', 'vag', 'vas', 'vbor', 'vdotr', 'vif', 'vpv', 'vpvpv', 'vpvts', 'vpvtv', 'vsumr', 'vtv', 'vtvtv']
    return func_names

def get_test_ir(test_name, optimize=3):
    # 构造文件名和路径
    file_path = NEWTSVC_PATH + f"/tmp/{test_name}_inner_O{optimize}.ll"

    # 检查文件是否存在
    if not os.path.exists(file_path):
        raise FileNotFoundError(f"The file {file_path} does not exist.")

    # 读取文件内容
    with open(file_path, 'r', encoding='utf-8') as file:
        ir_code = file.read()

    return ir_code

@ray.remote(num_cpus=16)
def analyse_func(task, func_name: str, test_code: str, work_dir: str, timeout: int = 180, reference_params: Dict = None, repeat: int = 0):
    output_buffer = io.StringIO()  # 用于捕获 print 输出
    # 捕获输出上下文
    with contextlib.redirect_stdout(output_buffer):
        reference_params = reference_params or {}
        dataset_path = NEWTSVC_PATH

        if task == "IR":
            suffix = "ll"
        elif task == "asm":
            suffix = "s"
        else:
            print("Wrong task!")
            exit()

        # 将汇编代码写入临时文件
        test_file_path = os.path.join(work_dir, f"{func_name}-{repeat}.{suffix}")
        with open(test_file_path, "w") as test_file:
            test_file.write(test_code)
        print(f"Written test code to {test_file_path}")

        # 第一步：将汇编文件编译成 .o 中间文件
        obj_file_path = os.path.join(work_dir, f"{func_name}-{repeat}.o")
        assemble_command = [
            "clang", "-c", test_file_path, "-o", obj_file_path, "-lm", "-O3"
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
                    "O0": reference_params.get("O0", None),
                    "O3": reference_params.get("O3", None),
                },
                "compilation_error": compilation_error,
                "execution_error": "",
            }, output_buffer.getvalue()

        # 第二步：将 .o 中间文件和其他文件一起编译成可执行文件
        output_file_path = os.path.join(work_dir, f"{func_name}-{repeat}.out")
        compile_command = [
            "clang",
            obj_file_path,
            f"{dataset_path}/tmp/{func_name}_main.o",
            f"{dataset_path}/tmp/dummy.o",
            f"{dataset_path}/tmp/common.o",
            "-o", output_file_path, "-lm",
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
                    "O0": reference_params.get("O0", None),
                    "O3": reference_params.get("O3", None),
                },
                "compilation_error": compilation_error,
                "execution_error": "",
            }, output_buffer.getvalue()

        # 运行生成的可执行文件一次并捕获输出
        try:
            run_result = subprocess.run([output_file_path], capture_output=True, text=True, timeout=timeout, errors='replace')
            print(f"Output of {func_name} (Run 1): {run_result.stdout}")
            output = run_result.stdout
            execution_success = True
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

        # 检查输出是否符合 reference_params
        if reference_params and "checksum" in reference_params and "count" in reference_params:
            expected_checksum = reference_params["checksum"]
            expected_count = reference_params["count"]
            if output is not None:
                output_parts = output.strip().split()
                if len(output_parts) < 4:
                    print(f"Output format error for {func_name} (Run 1): expected at least 4 parts, got {len(output_parts)} parts")
                    execution_success = False
                    execution_error = "return value is incorrect"
                else:
                    try:
                        checksum = output_parts[2]
                        count =output_parts[3]
                        if checksum != expected_checksum or count != expected_count:
                            print(f"Output mismatch for {func_name} (Run 1): expected checksum '{expected_checksum}', got '{checksum}'; expected count '{expected_count}', got '{count}'")
                            execution_success = False
                            execution_error = "return value is incorrect"
                    except (ValueError, IndexError):
                        print(f"Output format error for {func_name} (Run 1): expected float and int, got '{output_parts[2]}' and '{output_parts[3]}'")
                        execution_success = False
                        execution_error = "return value is incorrect"

        # 如果预运行失败，直接返回
        if not execution_success:
            return {
                "func_name": func_name,
                "compilation": compilation_success,
                "execution": execution_success,
                "timing": {
                    "current": None,
                    "O0": reference_params.get("O0", None),
                    "O3": reference_params.get("O3", None),
                },
                "compilation_error": compilation_error,
                "execution_error": execution_error,
            }, output_buffer.getvalue()

        run_times = []
        for run_number in range(11):
            try:
                run_result = subprocess.run([output_file_path], capture_output=True, text=True, timeout=timeout, errors='replace')
                print(f"Output of {func_name} (Run {run_number + 1}): {run_result.stdout}")
                if run_result.stdout is not None:
                    output_parts = run_result.stdout.strip().split()
                    if len(output_parts) >= 2:
                        try:
                            run_time = float(output_parts[1])
                            run_times.append(run_time)
                        except (ValueError, IndexError):
                            print(f"Output format error for {func_name} (Run {run_number + 1}): expected float for run time, got '{output_parts[1]}'")
            except subprocess.TimeoutExpired:
                print(f"Function {func_name} timed out after {timeout} seconds (Run {run_number + 1})")
                execution_error = "Program timed out"
            except subprocess.CalledProcessError as e:
                print(f"Error running {output_file_path} (Run {run_number + 1}): {e}")
                execution_error = str(e)

        # 计算较低5次的平均运行时间
        if run_times:
            run_times.sort()
            timing = sum(run_times[3:8]) / 5
        else:
            timing = None

        return {
            "func_name": func_name,
            "compilation": compilation_success,
            "execution": execution_success,
            "timing": {
                "current": timing,
                "O0": reference_params.get("O0", None),
                "O3": reference_params.get("O3", None),
            },
            "compilation_error": compilation_error,
            "execution_error": "",
        }, output_buffer.getvalue()
