from typing import Literal
import json
import argparse
import os
import glob
import subprocess
from multiprocessing import Pool
from concurrent.futures import ProcessPoolExecutor
from tqdm import tqdm
from construct import common_inner_header, common_main_header, common_main

def get_inner_source(d):
    return common_inner_header + d["need_before"] + d["inner"]

def get_main_source(d):
    return common_main_header + d["main"] + common_main.format(d["time_func"])

def endpoint_compile_standard(end2end=True):
    with open("tsvc_data_dict.json", "r") as f:
        data = json.load(f)

    fname_list = data["list"]

    def pre_compile():
        cmd1 = f"clang -O0 -o tmp/dummy.o -c common_files/dummy.c"
        cmd2 = f"clang -O0 -o tmp/common.o -c common_files/common.c"
        subprocess.run(cmd1, shell=True)
        subprocess.run(cmd2, shell=True)

    def compile_cmd(fname, opt, end2end=True):
        cmds = [
            f"clang -O0 -o tmp/{fname}_main.o -c tmp/{fname}_main.c -Icommon_files",
        ]
        if end2end:
            cmds.extend([
                f"clang -O{opt} -S tmp/{fname}_inner.c -o tmp/{fname}_inner_O{opt}.s",
                f"clang -O{opt} -o tmp/{fname}_inner_O{opt}.o -c tmp/{fname}_inner_O{opt}.s",
                f"clang -o tmp/{fname}_end2end_O{opt}.out tmp/{fname}_main.o tmp/{fname}_inner_O{opt}.o tmp/dummy.o tmp/common.o -lm",
            ])
        else:
            cmds.extend([
                f"clang -O{opt} -S -emit-llvm tmp/{fname}_inner.c -o tmp/{fname}_inner_O{opt}.ll",
                f"opt -O{opt} -o tmp/{fname}_inner_O{opt}.bc tmp/{fname}_inner_O{opt}.ll",
                f"clang -O{opt} -S -o tmp/{fname}_inner_O{opt}_IR.s -c tmp/{fname}_inner_O{opt}.bc",
                f"clang -O{opt} -o tmp/{fname}_inner_O{opt}_IR.o -c tmp/{fname}_inner_O{opt}_IR.s",
                f"clang -o tmp/{fname}_IR_O{opt}.out tmp/{fname}_main.o tmp/{fname}_inner_O{opt}_IR.o tmp/dummy.o tmp/common.o -lm"
            ])
        for cmd in cmds:
            subprocess.run(cmd, shell=True)
        
    tasks = []
    for fname in fname_list:
        with open(f"tmp/{fname}_inner.c", "w") as f:
            f.write(get_inner_source(data[fname]))
        with open(f"tmp/{fname}_main.c", "w") as f:
            f.write(get_main_source(data[fname]))
        tasks.append((fname, 0, end2end))
        tasks.append((fname, 3, end2end))

    pre_compile()
    def compile_cmd_wrapper(tup):
        compile_cmd(tup[0], tup[1], tup[2])
    for tup in tqdm(tasks):
        compile_cmd_wrapper(tup)

def run_cmd(tup):
    fname, opt, end2end = tup
    if end2end:
        cmd = f"./tmp/{fname}_end2end_O{opt}.out"
    else:
        cmd = f"./tmp/{fname}_IR_O{opt}.out"
    
    timings = []
    for _ in range(11):
        run_result = subprocess.run(cmd, capture_output=True, text=True)
        output_parts = run_result.stdout.strip().split()
        timings.append(float(output_parts[1]))
        checksum = output_parts[2]
        count = output_parts[3]

    timings.sort()
    timing = sum(timings[3:8]) / 5
    return timing, checksum, count

def endpoint_run_standard(end2end=True):
    with open("tsvc_data_dict.json", "r") as f:
        data = json.load(f)
    fname_list = data["list"]
    tasks = []

    for fname in fname_list:
        tasks.append((fname, 0, end2end))
        tasks.append((fname, 3, end2end))

    with ProcessPoolExecutor(max_workers=24) as executor:
        results = list(executor.map(run_cmd, tasks))
    
    ref_dict = {}
    for idx, result in enumerate(results):
        if ref_dict.get(tasks[idx][0], None) == None:
            ref_dict[tasks[idx][0]] = {}
        ref_dict[tasks[idx][0]][f"O{tasks[idx][1]}"] = result[0]
        ref_dict[tasks[idx][0]][f"checksum"] = result[1]
        ref_dict[tasks[idx][0]][f"count"] = result[2]

    with open(f'standard_params_{"e2e" if end2end else "IR"}.json', "w") as f:
        json.dump(ref_dict, f)


# def endpoint_analyse_standard(end2end=True):
#     with open("tsvc_data_dict.json", "r") as f:
#         data = json.load(f)
#     if end2end:
#         fname_list = data["list"]
#         standard_params = {}
#         standard_params["list"] = fname_list
#         for fname in fname_list:
#             with open(f"log/{fname}_end2end_O0.log", "r") as f:
#                 log0 = f.read()
#             with open(f"log/{fname}_end2end_O3.log", "r") as f:
#                 log3 = f.read()
#             log0_list = log0.splitlines()
#             log3_list = log3.splitlines()
#             O0_times = []
#             O3_times = []
#             for line in log0_list:
#                 line_list = line.split()
#                 O0_time = float(line_list[1])
#                 O0_times.append(O0_time)
#                 checksum = line_list[2]
#                 count = line_list[3]
#             for line in log3_list:
#                 line_list = line.split()
#                 O3_time = float(line_list[1])
#                 O3_times.append(O3_time)
#             O0_times.sort()
#             O3_times.sort()
#             O0_avg = sum(O0_times[2:7]) / 5
#             O3_avg = sum(O3_times[2:7]) / 5
#             standard_params[fname] = {"O0": O0_avg, "O3": O3_avg, "checksum": checksum, "count": count}
#         with open("standard_params_end2end.json", "w") as f:
#             json.dump(standard_params, f)

def compile_llm(tup):
    base_name, fname, cmds, target0, target3, asm_code = tup
    try:
        for cmd in cmds:
            subprocess.run(cmd.split(), text=True, check=True, stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e:
        # print(f"Error compiling {base_name}.{fname}: {e}", flush=True)
        return base_name, fname, False, e.stderr, asm_code
    
    return base_name, fname, True, target0, target3, asm_code

def run_llm(tup):
    data_dict = tup[0]
    target0 = tup[1]
    target3 = tup[2]
    standard_dict = tup[3]
    target_dir = os.path.dirname(target0)
    target0_base = os.path.splitext(target0)[0]
    target3_base = os.path.splitext(target3)[0]
    
    cmd = target0

    execution = False
    execution_error = ""
    data_dict["execution"] = True
    data_dict["execution_error"] = ""
    try:
        sub = subprocess.run([cmd], text=True, check=True, timeout=180, capture_output=True)
        output = sub.stdout
        output_list = output.split()
        if len(output_list) < 4:
            print(f"Error running {target0}: {output}", flush=True)
            execution_error = "return value is incorrect"
            data_dict["execution"] = False
            data_dict["execution_error"] = execution_error
            # return data_dict
        elif standard_dict["checksum"] != output_list[2] or standard_dict["count"] != output_list[3]:
            data_dict["execution"] = False
            data_dict["execution_error"] = "return value is incorrect"
            #return data_dict
    except subprocess.CalledProcessError as e:
        # print(f"Error running {target0}: {e}", flush=True)
        data_dict["execution"] = False
        data_dict["execution_error"] = str(e)
        #return data_dict
    except subprocess.TimeoutExpired:
        # print(f"Function {data_dict['fname']} timed out after 180 seconds", flush=True)
        data_dict["execution"] = False
        data_dict["execution_error"] = "Program timed out"
        #return data_dict
    
    cmd = target3

    execution3 = False
    execution_error3 = ""
    data_dict["execution3"] = True
    data_dict["execution_error3"] = ""
    try:
        sub = subprocess.run([cmd], text=True, check=True, timeout=180, capture_output=True)
        output3 = sub.stdout
        output_list3 = output3.split()
        if len(output_list3) < 4:
            print(f"Error running {target3}: {output3}", flush=True)
            execution_error3 = "return value is incorrect"
            data_dict["execution3"] = False
            data_dict["execution_error3"] = execution_error3
            #return data_dict
        elif standard_dict["checksum"] != output_list3[2] or standard_dict["count"] != output_list3[3]:
            data_dict["execution3"] = False
            data_dict["execution_error3"] = "return value is incorrect"
            #return data_dict
    except subprocess.CalledProcessError as e:
        # print(f"Error running {target0}: {e}", flush=True)
        data_dict["execution3"] = False
        data_dict["execution_error3"] = str(e)
        #return data_dict
    except subprocess.TimeoutExpired:
        # print(f"Function {data_dict['fname']} timed out after 180 seconds", flush=True)
        data_dict["execution3"] = False
        data_dict["execution_error3"] = "Program timed out"
        #return data_dict

    if data_dict["execution"]:
        cmd = target0
        print("running", cmd, flush=True)
        run_times = []
        for run_number in range(11):
            try:
                run_result = subprocess.run(cmd.split(), capture_output=True, text=True, timeout=180)
            except subprocess.TimeoutExpired:
                print(f"Function {data_dict['fname']} timed out after 180 seconds", flush=True)
                data_dict["execution"] = False
                data_dict["execution_error"] = "Program timed out"
                break
            if run_result.stdout is not None:
                output_parts = run_result.stdout.strip().split()
                if len(output_parts) >= 2:
                    try:
                        run_time = float(output_parts[1])
                        run_times.append(run_time)
                    except (ValueError, IndexError):
                        # print(f"Output format error for {fname} (Run {run_number + 1}): expected float for run time, got '{output_parts[1]}'", flush=True)
                        data_dict["execution"] = False
                        data_dict["execution_error"] = "Output format error"
                        #return data_dict
        run_times.sort()
        data_dict["myO0"] = sum(run_times[3:8]) / 5

    if data_dict["execution3"]:
        cmd = target3
        print("running", cmd, flush=True)
        run_times = []
        for run_number in range(11):
            try:
                run_result = subprocess.run(cmd.split(), capture_output=True, text=True, timeout=180)
            except subprocess.TimeoutExpired:
                print(f"Function {data_dict['fname']} timed out after 180 seconds", flush=True)
                data_dict["execution3"] = False
                data_dict["execution_error3"] = "Program timed out"
                break
            if run_result.stdout is not None:
                output_parts = run_result.stdout.strip().split()
                if len(output_parts) >= 2:
                    try:
                        run_time = float(output_parts[1])
                        run_times.append(run_time)
                    except (ValueError, IndexError):
                        # print(f"Output format error for {fname} (Run {run_number + 1}): expected float for run time, got '{output_parts[1]}'", flush=True)
                        data_dict["execution3"] = False
                        data_dict["execution_error3"] = "Output format error"
                        #return data_dict
        run_times.sort()
        data_dict["myO3"] = sum(run_times[3:8]) / 5

    return data_dict


def endpoint_model_benchmark(input_files, output_files=None, res_dir="../../tasks/common/Results/newTSVC", tmp_dir="../../tasks/common/Results/newTSVC", end2end=True):
    if output_files is not None:
        assert len(input_files) == len(output_files)
    total_compilation_tasks = []
    all_in_one_dict = {}
    for idx, file_name in enumerate(input_files):
        # 获取不带后缀的文件名
        base_name = os.path.splitext(os.path.basename(file_name))[0]
        all_in_one_dict[base_name] = {}
        # 在tmp_dir下创建同名文件夹
        target_dir = os.path.join(tmp_dir, base_name)
        os.makedirs(target_dir, exist_ok=True)
        with open(file_name, "r") as f:
            json_data = json.load(f)
        fname_list = json_data["list"]
        if end2end:
            for fname in fname_list:
                with open(os.path.join(target_dir, f"{fname}_end2end_llm.s"), "w") as f:
                    f.write(json_data[fname])
            
                cmds = [
                f"clang -O3 -o {target_dir}/{fname}_end2end_llm_O3.o -c {target_dir}/{fname}_end2end_llm.s",
                f"clang -o {target_dir}/{fname}_end2end_llm_O3.out {target_dir}/{fname}_end2end_llm_O3.o tmp/{fname}_main.o tmp/dummy.o tmp/common.o -lm",
                f"clang -O0 -o {target_dir}/{fname}_end2end_llm_O0.o -c {target_dir}/{fname}_end2end_llm.s",
                f"clang -o {target_dir}/{fname}_end2end_llm_O0.out {target_dir}/{fname}_end2end_llm_O0.o tmp/{fname}_main.o tmp/dummy.o tmp/common.o -lm",
            ]
                total_compilation_tasks.append((base_name, fname, cmds, f"{target_dir}/{fname}_end2end_llm_O0.out", f"{target_dir}/{fname}_end2end_llm_O3.out", json_data[fname]))
        else:
            for fname in fname_list:
                with open(os.path.join(target_dir, f"{fname}_IR_llm.ll"), "w") as f:
                    f.write(json_data[fname])
                
                cmds = [
                    f"clang -o {target_dir}/{fname}_test.o -c {target_dir}/{fname}_IR_llm.ll",
                    f"opt -O3 -o {target_dir}/{fname}_IR_llm_O3.bc {target_dir}/{fname}_IR_llm.ll",
                    f"clang -O3 -S -o {target_dir}/{fname}_IR_llm_O3.s {target_dir}/{fname}_IR_llm_O3.bc",
                    f"clang -O3 -o {target_dir}/{fname}_IR_llm_O3.o -c {target_dir}/{fname}_IR_llm_O3.s",
                    f"clang -o {target_dir}/{fname}_IR_llm_O3.out {target_dir}/{fname}_IR_llm_O3.o tmp/{fname}_main.o tmp/dummy.o tmp/common.o -lm",
                    f"opt -O0 -o {target_dir}/{fname}_IR_llm_O0.bc {target_dir}/{fname}_IR_llm.ll",
                    f"clang -O0 -S -o {target_dir}/{fname}_IR_llm_O0.s {target_dir}/{fname}_IR_llm_O0.bc",
                    f"clang -O0 -o {target_dir}/{fname}_IR_llm_O0.o -c {target_dir}/{fname}_IR_llm_O0.s",
                    f"clang -o {target_dir}/{fname}_IR_llm_O0.out {target_dir}/{fname}_IR_llm_O0.o tmp/{fname}_main.o tmp/dummy.o tmp/common.o -lm"
                ]
                total_compilation_tasks.append((base_name, fname, cmds, f"{target_dir}/{fname}_IR_llm_O0.out", f"{target_dir}/{fname}_IR_llm_O3.out", json_data[fname]))

    print("Compiling LLM...")
    with ProcessPoolExecutor(max_workers=16) as executor:
        comp_results = list(tqdm(executor.map(compile_llm, total_compilation_tasks), total=len(total_compilation_tasks)))

    with open("standard_params_e2e.json", "r") as f:
        standard_params = json.load(f)


    patch_202411291700 = []
    run_tasks = []
    for result in comp_results:
        if not result[2]: # compilation failed
            all_in_one_dict[result[0]][result[1]] = {
                "compilation": False,
                "compilation_error": result[3],
                "fname": result[1],
                "asm code": result[4]
            }
        else:
            all_in_one_dict[result[0]][result[1]] = {
                "compilation": True,
                "fname": result[1],
                "asm code": result[5]
            }
            run_tasks.append((all_in_one_dict[result[0]][result[1]], result[3], result[4], standard_params[result[1]]))
            patch_202411291700.append((result[0], result[1]))
    
    with open("all_in_one_dict.json", "w") as f:
        json.dump(all_in_one_dict, f)

    print("Running LLM...")
    # with ProcessPoolExecutor(max_workers=26) as executor:
    #     exe_results = list(tqdm(executor.map(run_llm, run_tasks), total=len(run_tasks)))

    with Pool(26) as p:
        exe_results = list(tqdm(p.imap(run_llm, run_tasks), total=len(run_tasks)))

    for idx, result in enumerate(exe_results):
        all_in_one_dict[patch_202411291700[idx][0]][patch_202411291700[idx][1]] = result

    if output_files is not None:
        for idx, file_name in enumerate(input_files):
            # 获取不带后缀的文件名
            base_name = os.path.splitext(os.path.basename(file_name))[0]

            with open(output_files[idx], "w") as f:
                json.dump(all_in_one_dict[base_name], f)
    else:
        with open("all_in_one_dict.json", "w") as f:
            json.dump(all_in_one_dict, f)

def compile_IR2asm(tup):
    base_name, fname, cmds, target3, asm_code = tup
    print(f"Compiling {base_name}.{fname}...", flush=True)
    try:
        for cmd in cmds:
            print(f"Running {cmd}...", flush=True)
            subprocess.run(cmd.split(), text=True, check=True, stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e:
        # print(f"Error compiling {base_name}.{fname}: {e}", flush=True)
        return base_name, fname, False, e.stderr, asm_code
    
    return base_name, fname, True, target3, asm_code

def run_llm_IR2asm(tup):
    data_dict = tup[0]
    target3 = tup[1]
    standard_dict = tup[2]
    
    cmd = target3
    execution = False
    execution_error = ""
    try:
        sub = subprocess.run([cmd], text=True, check=True, timeout=180, capture_output=True)
        output = sub.stdout
        output_list = output.split()
        if len(output_list) < 4:
            print(f"Error running {target3}: {output}", flush=True)
            execution_error = "return value is incorrect"
            data_dict["execution"] = False
            data_dict["execution_error"] = execution_error
            return data_dict
        if standard_dict["checksum"] != output_list[2] or standard_dict["count"] != output_list[3]:
            data_dict["execution"] = False
            data_dict["execution_error"] = "return value is incorrect"
            return data_dict
    except subprocess.CalledProcessError as e:
        # print(f"Error running {target3}: {e}", flush=True)
        data_dict["execution"] = False
        data_dict["execution_error"] = str(e)
        return data_dict
    except subprocess.TimeoutExpired:
        # print(f"Function {data_dict['fname']} timed out after 180 seconds", flush=True)
        data_dict["execution"] = False
        data_dict["execution_error"] = "Program timed out"
        return data_dict
    data_dict["execution"] = True
    data_dict["execution_error"] = ""
    
    cmd = target3
    print("running", cmd, flush=True)
    run_times = []
    for run_number in range(11):
        run_result = subprocess.run(cmd.split(), capture_output=True, text=True)
        if run_result.stdout is not None:
            output_parts = run_result.stdout.strip().split()
            if len(output_parts) >= 2:
                try:
                    run_time = float(output_parts[1])
                    run_times.append(run_time)
                except (ValueError, IndexError):
                    # print(f"Output format error for {fname} (Run {run_number + 1}): expected float for run time, got '{output_parts[1]}'", flush=True)
                    data_dict["execution"] = False
                    data_dict["execution_error"] = "Output format error"
                    return data_dict
    run_times.sort()
    data_dict["myO3"] = sum(run_times[3:8]) / 5

    return data_dict

def endpoint_model_benchmark_IR2asm(input_files, output_files=None, res_dir="../../tasks/common/Results/newTSVC", tmp_dir="../../tasks/common/Results/newTSVC", opt: Literal["O0", "O3"] = "O3"):
    if opt == "O0":
        raise NotImplementedError("IR2IR with O0 is not implemented")
    
    if output_files is not None:
        assert len(input_files) == len(output_files)

    total_compilation_tasks = []
    all_in_one_dict = {}
    for idx, file_name in enumerate(input_files):
        # 获取不带后缀的文件名
        base_name = os.path.splitext(os.path.basename(file_name))[0]
        all_in_one_dict[base_name] = {}
        # 在tmp_dir下创建同名文件夹
        target_dir = os.path.join(tmp_dir, base_name)
        os.makedirs(target_dir, exist_ok=True)
        with open(file_name, "r") as f:
            json_data = json.load(f)
        fname_list = json_data["list"]

        for fname in fname_list:
            output_file = os.path.join(target_dir, f"{fname}_IR2asm_O3_llm.s")
            with open(output_file, "w") as f:
                f.write(json_data[fname])
            cmds = [
                f"clang -O3 -c {target_dir}/{fname}_IR2asm_O3_llm.s -o {target_dir}/{fname}_IR2asm_O3_llm.o",
                f"clang -o {target_dir}/{fname}_IR2asm_O3_llm.out {target_dir}/{fname}_IR2asm_O3_llm.o tmp/{fname}_main.o tmp/dummy.o tmp/common.o -lm"
            ]
            total_compilation_tasks.append((base_name, fname, cmds, f"{target_dir}/{fname}_IR2asm_O3_llm.out", json_data[fname]))
            
    print("Compiling LLM...")
    with ProcessPoolExecutor(max_workers=16) as executor:
        comp_results = list(tqdm(executor.map(compile_IR2asm, total_compilation_tasks), total=len(total_compilation_tasks)))

    with open("standard_params_IR.json", "r") as f:
        standard_params = json.load(f)

    patch_202411291700 = []
    run_tasks = []
    for result in comp_results:
        if not result[2]: # compilation failed
            all_in_one_dict[result[0]][result[1]] = {
                "compilation": False,
                "compilation_error": result[3],
                "fname": result[1],
                "asm code": result[4]
            }
        else:
            all_in_one_dict[result[0]][result[1]] = {
                "compilation": True,
                "fname": result[1],
                "asm code": result[4]
            }
            run_tasks.append((all_in_one_dict[result[0]][result[1]], result[3], standard_params[result[1]]))
            patch_202411291700.append((result[0], result[1]))
    
    with open("all_in_one_dict.json", "w") as f:
        json.dump(all_in_one_dict, f)

    print("Running LLM...")
    with ProcessPoolExecutor(max_workers=20) as executor:
        exe_results = list(tqdm(executor.map(run_llm_IR2asm, run_tasks), total=len(run_tasks)))

    for idx, result in enumerate(exe_results):
        all_in_one_dict[patch_202411291700[idx][0]][patch_202411291700[idx][1]] = result

    if output_files is not None:
        for idx, file_name in enumerate(input_files):
            # 获取不带后缀的文件名
            base_name = os.path.splitext(os.path.basename(file_name))[0]

            with open(output_files[idx], "w") as f:
                json.dump(all_in_one_dict[base_name], f)
    else:
        with open("all_in_one_dict.json", "w") as f:
            json.dump(all_in_one_dict, f)

def compile_IR2IR(tup):
    base_name, fname, cmds, target3, ir_code = tup
    print(f"Compiling {base_name}.{fname}...", flush=True)
    try:
        for cmd in cmds:
            print(f"Running {cmd}...", flush=True)
            subprocess.run(cmd.split(), text=True, check=True, stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e:
        return base_name, fname, False, e.stderr, ir_code
    return base_name, fname, True, target3, ir_code

def run_llm_IR2IR(tup):
    data_dict = tup[0]
    target3 = tup[1]
    standard_dict = tup[2]
    
    cmd = target3
    data_dict.setdefault("execution", False)
    data_dict.setdefault("execution_error", "")
    
    try:
        result = subprocess.run([cmd], capture_output=True, text=True, timeout=180)
        if result.returncode != 0:
            data_dict["execution"] = False
            data_dict["execution_error"] = result.stderr
            return data_dict
        
        output_parts = result.stdout.strip().split()
        if len(output_parts) < 4:
            data_dict["execution"] = False
            data_dict["execution_error"] = "Invalid output format"
            return data_dict
            
        if (output_parts[2] != standard_dict["checksum"] or 
            output_parts[3] != standard_dict["count"]):
            data_dict["execution"] = False
            data_dict["execution_error"] = "Checksum mismatch"
            return data_dict

        # Timing measurement
        timings = []
        for _ in range(11):
            run_result = subprocess.run([cmd], capture_output=True, text=True)
            output_parts = run_result.stdout.strip().split()
            timings.append(float(output_parts[1]))
        
        timings.sort()
        data_dict["myO3"] = sum(timings[3:8]) / 5
        data_dict["execution"] = True
        
    except Exception as e:
        data_dict["execution"] = False
        data_dict["execution_error"] = str(e)
    
    return data_dict

def endpoint_model_benchmark_IR2IR(input_files, output_files=None, res_dir="../../tasks/common/Results/newTSVC", tmp_dir="../../tasks/common/Results/newTSVC", opt: Literal["O0", "O3"] = "O3"):
    if opt == "O0":
        raise NotImplementedError("IR2IR with O0 is not implemented")
    if output_files is not None:
        assert len(input_files) == len(output_files)

    total_compilation_tasks = []
    all_in_one_dict = {}
    
    # 准备编译任务
    for idx, file_name in enumerate(input_files):
        base_name = os.path.splitext(os.path.basename(file_name))[0]
        all_in_one_dict[base_name] = {}
        
        target_dir = os.path.join(tmp_dir, base_name)
        os.makedirs(target_dir, exist_ok=True)
        
        with open(file_name, "r") as f:
            json_data = json.load(f)
        
        for fname in json_data["list"]:
            optimized_ir_path = os.path.join(target_dir, f"{fname}_IR2IR_O3.ll")
            obj_path = os.path.join(target_dir, f"{fname}_IR2IR_O3.o")
            exe_path = os.path.join(target_dir, f"{fname}_IR2IR_O3.out")

            with open(optimized_ir_path, "w") as f:
                f.write(json_data[fname])
            
            # 定义编译步骤
            cmds = [
                f"clang -O3 -c {optimized_ir_path} -o {obj_path}",
                f"clang {obj_path} tmp/{fname}_main.o tmp/dummy.o tmp/common.o -lm -o {exe_path}"
            ]
            
            total_compilation_tasks.append(
                (base_name, fname, cmds, exe_path, json_data[fname])
            )

    # 并行执行编译
    with ProcessPoolExecutor(max_workers=16) as executor:
        comp_results = list(tqdm(executor.map(compile_IR2IR, total_compilation_tasks), 
                               total=len(total_compilation_tasks)))

    # 准备运行任务
    with open("standard_params_IR.json", "r") as f:
        standard_params = json.load(f)
    
    run_tasks = []
    for result in comp_results:
        base_name, fname, success, exe_path, ir_code = result
        if not success:
            all_in_one_dict[base_name][fname] = {
                "compilation": False,
                "compilation_error": exe_path,  # 这里存储的是错误信息
                "fname": fname,
                "ir_code": ir_code
            }
        else:
            data_dict = {
                "compilation": True,
                "fname": fname,
                "ir_code": ir_code
            }
            run_tasks.append( (data_dict, exe_path, standard_params[fname]) )
            all_in_one_dict[base_name][fname] = data_dict

    # 并行执行运行
    with ProcessPoolExecutor(max_workers=20) as executor:
        exe_results = list(tqdm(executor.map(run_llm_IR2IR, run_tasks), 
                              total=len(run_tasks)))

    # 合并结果
    result_idx = 0
    for base_name in all_in_one_dict:
        for fname in all_in_one_dict[base_name]:
            if all_in_one_dict[base_name][fname].get("compilation", False):
                all_in_one_dict[base_name][fname].update(exe_results[result_idx])
                result_idx += 1

    # 输出结果
    if output_files:
        for in_file, out_file in zip(input_files, output_files):
            base_name = os.path.splitext(os.path.basename(in_file))[0]
            with open(out_file, "w") as f:
                json.dump(all_in_one_dict[base_name], f, indent=2)
    else:
        with open("ir2ir_results.json", "w") as f:
            json.dump(all_in_one_dict, f, indent=2)

def main(mode: Literal["c2IR", "c2asm", "IR2IR", "IR2asm"], task: Literal["generate standard", "benchmark"], in_files: list[str], out_files: list[str]):
    if task == "generate standard":
        if mode == "c2IR":
            endpoint_compile_standard(False)
            endpoint_run_standard(False)
        elif mode == "c2asm":
            endpoint_compile_standard(True)
            endpoint_run_standard(True)
        elif mode == "IR2IR":
            # TODO@he
            # 是不是和c2IR一样？和原本的IR代码进行比较（原本的IR代码通过c2IR过程得到）
            raise NotImplementedError("IR2IR is not implemented")
        elif mode == "IR2asm":
            endpoint_compile_standard(False)
            endpoint_run_standard(False)
    elif task == "benchmark":
        if mode == "c2IR":
            endpoint_model_benchmark(in_files, out_files, end2end=False)
        elif mode == "c2asm":
            endpoint_model_benchmark(in_files, out_files, end2end=True)
        elif mode == "IR2IR":
            endpoint_model_benchmark_IR2IR(in_files, out_files, opt="O3")
        elif mode == "IR2asm":
            endpoint_model_benchmark_IR2asm(in_files, out_files, opt="O3")
    else:
        raise ValueError(f"Invalid task: {task}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--template", type=str, required=False)
    parser.add_argument("--mode", type=str, choices=["c2IR", "c2asm", "IR2IR", "IR2asm"])
    parser.add_argument("--task", type=str, choices=["standard", "benchmark"], default="benchmark")
    args = parser.parse_args()
    if args.task == "benchmark" and not args.template:
        parser.error("--template is required when task is 'benchmark'")

    # 为 benchmark 任务设置输入和输出文件
    if args.task == "benchmark":
        # 查找 tasks/common/Results/newTSVC/ 中匹配模板前缀的所有输入文件
        infiles = glob.glob(f"../../tasks/common/Results/newTSVC/{args.template}*.json")
        # 为每个输入文件生成对应的输出文件，在 .json 前添加 -res
        outfiles = [infile.replace(".json", "-res.json") for infile in infiles]
    # 对于 standard 任务，保持列表为空（假设 main 函数能处理）
    else:
        infiles = []
        outfiles = []

    main(mode=args.mode, task="generate standard" if args.task == "standard" else "benchmark", in_files=infiles, out_files=outfiles)
