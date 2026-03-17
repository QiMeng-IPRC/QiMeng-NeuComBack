import os
import re
import sys
import json
import time
import argparse
import shutil
import random
import threading
import traceback
import subprocess
import tempfile
import difflib
import ast
import importlib

from typing import List, Dict, Any, Tuple
from concurrent.futures import ThreadPoolExecutor, as_completed

from NeuComBackDataset import AVAILABLE_LEVELS, load_level_config

print_lock = threading.Lock()  # 全局打印锁
chatbot_dict_lock = threading.Lock()  # 用于保护 chatbot_dict 的更新

PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))
LEVEL_NAME = None
DATA_PATH = None
ANALYSE_MODULE = None
RESULT_DIR = None
REFERENCE_PARAMS_FILE = None
get_func_names = None
get_test_ir = None
ChatBot = None

MODEL = "deepseek-v3"  # 使用的模型
EPOCH_SIZE = 5  # 总共进行几轮
BATCH_SIZE = 5  # 数据划分的批大小
DEBUG_SIZE = 1  # 每批数据最多进行几轮 self-debug
OPTIMI_DEPTH = 3  # 尝试进行加速时进行几轮优化


def configure_level(level_name):
    global LEVEL_NAME
    global DATA_PATH
    global ANALYSE_MODULE
    global RESULT_DIR
    global REFERENCE_PARAMS_FILE
    global get_func_names
    global get_test_ir

    level_config = load_level_config(level_name)
    data_module = importlib.import_module(level_config.DATA_MODULE)

    LEVEL_NAME = level_config.LEVEL_NAME
    DATA_PATH = data_module.DATA_PATH
    ANALYSE_MODULE = level_config.ANALYSE_MODULE
    RESULT_DIR = level_config.RESULT_DIR
    REFERENCE_PARAMS_FILE = level_config.REFERENCE_PARAMS_FILE
    get_func_names = data_module.get_func_names
    get_test_ir = data_module.get_test_ir

    return level_config

def generate_func_correctness(func_name, chatbot_dict, current_error_prompt):
    if chatbot_dict[func_name]['solved']:
        with print_lock:
            print("*" * 50)
            print(f"Current Generate Func: {func_name}")
            print(f"Solved? {chatbot_dict[func_name]['solved']}")
            print("*" * 50)
        return

    # 获取 IR 代码
    llvm_ir_code = get_test_ir(func_name)
    # 构造 prompt
    error_message = chatbot_dict[func_name]['error_message']
    # 没有被解决，也没有错误信息，意味着是第一轮
    if not error_message:
        prompt = base_correctness_template.format(llvm_ir_code)
        if current_error_prompt != base_error_prompt:
            prompt += "\n" + current_error_prompt
        if current_speedup_prompt != base_speedup_prompt:
            prompt += "\n" + current_speedup_prompt
    # debug 轮次
    else:
        prompt = debug_template.format(error_message)

    # 调用对应的 chatbot 生成回答
    func_chatbot = chatbot_dict[func_name]['chatbot']
    response, asm_code = func_chatbot.answer_with_analyze(prompt, language='assembly')
    
    # 将生成的 asm_code 存储到字典中，供后续测试阶段使用
    with chatbot_dict_lock:
        chatbot_dict[func_name]['generated_code'] = asm_code
    
    with print_lock:
        print("*" * 50)
        print(f"Current Generate Func: {func_name}")
        print(f"Solved? {chatbot_dict[func_name]['solved']}")
        print("*" * 50)
        print("-" * 50)
        print("Prompt")
        print("-" * 50)
        print(prompt)
        print("-" * 50)
        print("Response")
        print("-" * 50)
        print(response)
        print("-" * 50)
        print("Asm Code")
        print("-" * 50)
        print(asm_code)

def generate_func_performance(func_name, chatbot_dict, current_asm_code, current_speedup_prompt, current_error_prompt):
    if chatbot_dict[func_name]['solved']:
        with print_lock:
            print("*" * 50)
            print(f"Current Generate Func: {func_name}")
            print(f"Solved? {chatbot_dict[func_name]['solved']}")
            print("*" * 50)
        return

    # 获取 IR 代码
    llvm_ir_code = get_test_ir(func_name)

    # 构建当前的 Prompt
    solved = chatbot_dict[func_name]['solved']
    error_message = chatbot_dict[func_name]['error_message']
    # 如果存在错误并且没有解决掉，则需要debug
    if error_message and not solved:
        prompt = debug_template.format(error_message)
    # 否则说明是性能改进的第一轮
    else:
        prompt = base_performance_template.format(llvm_ir_code, current_asm_code)
        if current_error_prompt != base_error_prompt:
            prompt += "\n" + current_error_prompt
        if current_speedup_prompt != base_speedup_prompt:
            prompt += "\n" + current_speedup_prompt

    # 调用对应的 chatbot 生成回答
    func_chatbot = chatbot_dict[func_name]['chatbot']
    response, asm_code = func_chatbot.answer_with_analyze(prompt, language='assembly')

    # 将生成的 asm_code 存储到字典中，供后续测试阶段使用
    with chatbot_dict_lock:
        chatbot_dict[func_name]['generated_code'] = asm_code

    with print_lock:
        print("*" * 50)
        print(f"Current Generate Func: {func_name}")
        print(f"Solved? {chatbot_dict[func_name]['solved']}")
        print("*" * 50)
        print("-" * 50)
        print("Prompt")
        print("-" * 50)
        print(prompt)
        print("-" * 50)
        print("Response")
        print("-" * 50)
        print(response)
        print("-" * 50)
        print("Asm Code")
        print("-" * 50)
        print(asm_code)

def test_func(func_batch, chatbot_dict, work_dir, reference_params):
    # 筛选出未解决的任务
    pending_func_batch = [func_name for func_name in func_batch if not chatbot_dict[func_name]['solved']]
    if not pending_func_batch:
        with print_lock:
            print("All tasks in func_batch are already solved. Skipping testing.")
        return

    # 提交批量测试并获取结果
    test_results = submit_batch_test(pending_func_batch, chatbot_dict, work_dir, reference_params)

    # 更新状态
    with chatbot_dict_lock:
        for result in test_results:
            func_name = result["func_name"]
            if not result["compilation"]:
                chatbot_dict[func_name]["error_message"] = result["compilation_error"]
            elif not result["execution"]:
                chatbot_dict[func_name]["error_message"] = result["execution_error"]
            else:
                chatbot_dict[func_name]["solved"] = True
            chatbot_dict[func_name]["timing"] = result["timing"]

def submit_batch_test(func_batch, chatbot_dict, work_dir, reference_params):
    # 将 work_dir 转换为绝对路径
    work_dir = os.path.abspath(work_dir)
    tmp_dir = tempfile.mkdtemp(dir=work_dir)
    print(f"Temporary directory: {tmp_dir}")

    # 创建临时输入文件
    test_cases = []
    for func_name in func_batch:
        test_cases.append({
            "func_name": func_name,
            "generated_code": chatbot_dict[func_name]["generated_code"],
        })

    # 生成输入输出文件路径
    input_path = os.path.join(tmp_dir, "input.json")
    output_path = os.path.join(tmp_dir, "output.json")
    test_script_path = os.path.join(tmp_dir, "test.slurm")

    # 写入输入文件
    test_data = {
        "test_cases": test_cases,
        "work_dir": tmp_dir,
        "reference_params": reference_params,
    }
    with open(input_path, "w") as f:
        json.dump(test_data, f, indent=2)

    # 写入slurm脚本
    test_script = f"""#!/bin/bash
# conda activate your_conda_env  # 替换为你的 conda 环境名称
cd {tmp_dir}

# 执行测试
export PYTHONPATH="{PROJECT_ROOT}:$PYTHONPATH"
python -m {ANALYSE_MODULE} {input_path} {output_path}
"""
    with open(test_script_path, "w") as f:
        f.write(test_script)

    # 提交测试作业
    submit_cmd = f"sbatch {test_script_path}"
    try:
        submit_output = subprocess.check_output(submit_cmd, shell=True, text=True).strip()
        print("Job submission output:", submit_output)
    except subprocess.CalledProcessError as e:
        raise RuntimeError(f"Sbatch submission failed: {e}")

    # 从 sbatch 输出中提取作业 ID
    # 通常 sbatch 输出形如 "Submitted batch job 123456"
    job_id = submit_output.split()[-1]
    print(f"Submitted job id: {job_id}")

    # 轮询任务状态，等待作业完成
    job_running = True
    prev_print_length = 0  # 用于确保覆盖上一次输出
    try:
        while job_running:
            time.sleep(1)  # 每 10 秒检查一次
            try:
                squeue_output = subprocess.check_output(f"squeue -j {job_id}", shell=True, text=True)
                # 判断作业是否还存在
                if job_id not in squeue_output:
                    job_running = False
                    sys.stdout.write("\r作业已完成" + " " * prev_print_length + "\n")
                    sys.stdout.flush()
                    break

                # 若作业还在队列中，提取作业状态信息
                lines = squeue_output.strip().splitlines()
                # 假设第一行为表头，第二行为作业信息；如果没有则使用全部信息
                if len(lines) >= 2:
                    job_info = lines[1]
                else:
                    job_info = squeue_output.strip()

                # 构造要打印的消息
                status_message = f"当前作业状态：{job_info}"

                # 为了覆盖上一次输出，先计算上一次打印长度
                prev_print_length = len(status_message)
                # 使用 \r 回车到行首，然后输出状态信息
                sys.stdout.write("\r" + status_message)
                sys.stdout.flush()
            except subprocess.CalledProcessError:
                # 如果调用 squeue 失败，则认为作业已完成
                job_running = False
                sys.stdout.write("\r作业查询失败" + " " * prev_print_length + "\n")
                sys.stdout.flush()
    except KeyboardInterrupt:
        # 捕获 Ctrl+C 中断，尝试取消任务
        sys.stdout.write("\n检测到 Ctrl+C，正在尝试取消作业...\n")
        try:
            subprocess.check_output(f"scancel {job_id}", shell=True, text=True)
            sys.stdout.write("作业已取消。\n")
        except subprocess.CalledProcessError as e:
            sys.stdout.write(f"取消作业失败：{e}\n")
    finally:
        sys.stdout.write("退出轮询。\n")

    # 读取结果
    with open(output_path, "r") as f:
        test_results = json.load(f)

    # 清除临时目录
    # shutil.rmtree(tmp_dir)
    # print(f"已清除临时目录: {tmp_dir}")

    return test_results

def process_debug_trail(debug_trail):
    def format_chat_history(history):
        """
        将对话历史记录格式化为字符串，每一对用户和 AI 消息构成一个回合。
        格式示例：
        # Chat Round 1
        <User> 用户输入内容

        <Assistant> AI 回复内容

        # Chat Round 2
        <User> 用户输入内容

        <Assistant> AI 回复内容
        """
        formatted_lines = []
        round_num = 1
        i = 0
        n = len(history)
        while i < n:
            # 检查是否为用户消息开始一个回合
            if history[i]['role'] == 'user':
                formatted_lines.append(f"# Chat Round {round_num}")
                formatted_lines.append(f"<User>\n{history[i]['content']}")
                i += 1
                # 如果存在对应的 AI 回复，则添加
                if i < n and history[i]['role'] == 'assistant':
                    formatted_lines.append(f"\n<Assistant>\n{history[i]['content']}")
                    i += 1
                round_num += 1
            else:
                # 如果信息不按预期顺序出现，则直接添加
                formatted_lines.append(f"<{history[i]['role'].capitalize()}>\n{history[i]['content']}")
                i += 1
        formatted_lines.append(f"# End Round")
        formatted_lines.append(f"<User>\nCongratulations! The current assembly code is correct.")
        return "\n\n".join(formatted_lines)

    formatted_debug_trail = format_chat_history(debug_trail)
    prompt = formatted_debug_trail + f"\n\n{'='*20}\n\n" + error_extract_prompt
    chatbot = ChatBot(model=MODEL)
    chatbot.clear()
    response = chatbot.answer(prompt)

    with print_lock:
        print("*" * 50)
        print("-" * 50)
        print("Prompt")
        print("-" * 50)
        print(prompt)
        print("-" * 50)
        print("Response")
        print("-" * 50)
        print(response)

    return response

def process_speedup_trail(speedup_trail):
    def format_chat_history(history):
        """
        将对话历史记录格式化为字符串，每一对用户和 AI 消息构成一个回合。
        格式示例：
        # Chat Round 1
        <User> 用户输入内容

        <Assistant> AI 回复内容

        # Chat Round 2
        <User> 用户输入内容

        <Assistant> AI 回复内容
        """
        formatted_lines = []
        round_num = 1
        i = 0
        n = len(history)
        while i < n:
            # 检查是否为用户消息开始一个回合
            if history[i]['role'] == 'user':
                formatted_lines.append(f"# Chat Round {round_num}")
                formatted_lines.append(f"<User>\n{history[i]['content']}")
                i += 1
                # 如果存在对应的 AI 回复，则添加
                if i < n and history[i]['role'] == 'assistant':
                    formatted_lines.append(f"\n<Assistant>\n{history[i]['content']}")
                    i += 1
                round_num += 1
            else:
                # 如果信息不按预期顺序出现，则直接添加
                formatted_lines.append(f"<{history[i]['role'].capitalize()}>\n{history[i]['content']}")
                i += 1
        formatted_lines.append(f"# End Round")
        formatted_lines.append(f"<User>\nCongratulations! The current assembly code is correctly optimized.")
        return "\n\n".join(formatted_lines)

    formatted_speedup_trail = format_chat_history(speedup_trail)
    prompt = formatted_speedup_trail + f"\n\n{'='*20}\n\n" + speedup_extract_prompt
    chatbot = ChatBot(model=MODEL)
    chatbot.clear()
    response = chatbot.answer(prompt)

    with print_lock:
        print("*" * 50)
        print("-" * 50)
        print("Prompt")
        print("-" * 50)
        print(prompt)
        print("-" * 50)
        print("Response")
        print("-" * 50)
        print(response)

    return response

def analyze_line_diff(text1: str, text2: str, similarity_threshold=0.6) -> List[Dict[str, Any]]:
    """
    Analyzes two texts line by line using ndiff and similarity scoring
    to better distinguish modifications from separate deletions/insertions.
    Includes preprocessing to handle line endings, trailing whitespace, and empty lines.

    Args:
        text1: The original text.
        text2: The modified text.
        similarity_threshold: Threshold for classifying adjacent del/ins as modify.

    Returns:
        List of change blocks ('equal', 'delete', 'insert', 'modify').
    """

    # --- Preprocessing Function ---
    def preprocess_text(text: str) -> List[str]:
        # 1. Normalize line endings to \n
        normalized_text = text.replace('\r\n', '\n').replace('\r', '\n')
        # 2. Split into lines
        lines = normalized_text.splitlines()
        # 3. Strip trailing whitespace from each line AND filter empty lines
        processed_lines = [line.rstrip() for line in lines]
        # 4. Filter out lines that are now empty after stripping
        #    This prevents diffing blank lines caused only by whitespace differences.
        return [line for line in processed_lines if line]

    # --- Apply Preprocessing ---
    text1_lines = preprocess_text(text1)
    text2_lines = preprocess_text(text2)

    # --- Proceed with ndiff on cleaned lines ---
    diff_iter = difflib.ndiff(text1_lines, text2_lines)

    results = []
    diff_list = list(diff_iter)
    i = 0
    # These line numbers now refer to the line index within the *preprocessed* lists
    orig_line_num = 1
    mod_line_num = 1

    while i < len(diff_list):
        line = diff_list[i]
        op = line[:1]
        content = line[2:] # Content from the preprocessed line

        if op == ' ': # Equal line
            results.append({
                'type': 'equal',
                'original_lines': [content],
                'modified_lines': [content],
                'original_start_line': orig_line_num,
                'modified_start_line': mod_line_num,
            })
            orig_line_num += 1
            mod_line_num += 1
            i += 1
        elif op == '?': # Ignore hint lines
            i += 1
        elif op == '-': # Deletion
            next_op_idx = -1
            j = i + 1
            # Find next non-hint line
            while j < len(diff_list):
                if diff_list[j].startswith('?'):
                    j += 1
                    continue
                next_op_idx = j
                break

            # Check if adjacent to an insertion for potential 'modify' classification
            if next_op_idx != -1 and diff_list[next_op_idx].startswith('+'):
                deleted_content = content
                inserted_content = diff_list[next_op_idx][2:]
                matcher = difflib.SequenceMatcher(None, deleted_content, inserted_content)
                ratio = matcher.ratio()

                if ratio >= similarity_threshold:
                    results.append({
                        'type': 'modify',
                        'original_lines': [deleted_content],
                        'modified_lines': [inserted_content],
                        'original_start_line': orig_line_num,
                        'modified_start_line': mod_line_num,
                    })
                    orig_line_num += 1
                    mod_line_num += 1
                    i = next_op_idx + 1 # Consume both lines
                else: # Not similar enough, treat as separate delete
                    results.append({
                        'type': 'delete',
                        'original_lines': [deleted_content],
                        'modified_lines': [],
                        'original_start_line': orig_line_num,
                        'modified_start_line': mod_line_num, # Line number if it existed in modified text
                    })
                    orig_line_num += 1
                    i += 1 # Consume only the '-' line
            else: # No following insertion, definitely a delete
                results.append({
                    'type': 'delete',
                    'original_lines': [content],
                    'modified_lines': [],
                    'original_start_line': orig_line_num,
                    'modified_start_line': mod_line_num, # Line number if it existed in modified text
                })
                orig_line_num += 1
                i += 1
        elif op == '+': # Insertion (only reached if not consumed by 'modify' logic)
            results.append({
                'type': 'insert',
                'original_lines': [],
                'modified_lines': [content],
                'original_start_line': orig_line_num, # Line number where it appears relative to original
                'modified_start_line': mod_line_num,
            })
            mod_line_num += 1
            i += 1
        else: # Should not happen
            i += 1

    return results

def build_llm_diff_prompt(diff_analysis: List[Dict[str, Any]]) -> Tuple[str, List[int]]:
    """
    Builds a formatted string prompt showing line-level differences for LLM review,
    with improved alignment for the status tags.

    Args:
        diff_analysis: The structured diff list from analyze_line_diff.

    Returns:
        A tuple containing:
        - The formatted prompt string.
        - A list of display line numbers corresponding to changes (delete, insert, modify).
    """
    prompt_lines = []
    change_line_numbers = []
    display_line_num = 1

    # --- Calculate maximum width needed inside the brackets ---
    # Status strings: "not modified", "deleted", "inserted", "before modified", "after modified"
    max_status_len = max(len(s) for s in ["not modified", "deleted", "inserted", "before modified", "after modified"]) # 15

    # Estimate max line number digits (e.g., 3 for up to 999 lines, 4 for up to 9999)
    # Adjust if you expect significantly more lines. Let's assume 4 digits max for safety.
    max_digits = 4
    prefix_len = len("line , ") # 7 characters ("line ", ", ")

    # Calculate the total width needed for the content inside []
    internal_width = prefix_len + max_digits + max_status_len # e.g., 7 + 4 + 15 = 26
    # Add a little buffer space if desired
    internal_width += 2 # Make it 28

    # --- Build the prompt lines ---
    for block in diff_analysis:
        block['display_line'] = display_line_num
        block_type = block['type']
        status_str = ""
        lines_to_process = []
        is_change = False

        if block_type == 'equal':
            status_str = "not modified"
            lines_to_process = [("original", line) for line in block['original_lines']]
            is_change = False
        elif block_type == 'delete':
            status_str = "deleted"
            lines_to_process = [("original", line) for line in block['original_lines']]
            is_change = True
        elif block_type == 'insert':
            status_str = "inserted"
            lines_to_process = [("modified", line) for line in block['modified_lines']]
            is_change = True
        elif block_type == 'modify':
            # Handle the two lines for modify separately
            if block['original_lines'] and block['modified_lines']:
                original_line = block['original_lines'][0]
                modified_line = block['modified_lines'][0]

                # Line 1: Before
                status_before = "before modified"
                content_before = f"line {display_line_num}, {status_before}"
                padded_content_before = content_before.ljust(internal_width)
                tag_before = f"[{padded_content_before}]"
                prompt_lines.append(f"{tag_before} {original_line}")

                # Line 2: After
                status_after = "after modified"
                content_after = f"line {display_line_num}, {status_after}"
                padded_content_after = content_after.ljust(internal_width)
                tag_after = f"[{padded_content_after}]"
                prompt_lines.append(f"{tag_after} {modified_line}")

                change_line_numbers.append(display_line_num)
                display_line_num += 1
                continue # Skip common processing for modify as it's handled fully here
            else:
                # Should not happen with analyze_line_diff's current logic, but handle defensively
                pass

        # Process lines for equal, delete, insert
        for line_type, line in lines_to_process:
            # Construct content string inside brackets
            content_str = f"line {display_line_num}, {status_str}"
            # Pad the content string
            padded_content_str = content_str.ljust(internal_width)
            # Create the final tag
            tag = f"[{padded_content_str}]"
            prompt_lines.append(f"{tag} {line}")

            if is_change:
                change_line_numbers.append(display_line_num)
            display_line_num += 1

    # --- Construct the review prompt ---
    review_prompt = (
        # 1. Set the Context and Goal
        "You are an expert refining a prompt used for guiding an LLM to generate high-quality assembly code.\n"
        "Your task is to review proposed line-by-line changes to the existing prompt.\n"
        "The primary goal is to **improve the prompt's effectiveness** (clarity, correctness, completeness) for generating accurate assembly code, **while preserving valuable existing guidance and constraints**.\n\n"

        # 2. Provide Guiding Principles for Evaluating Changes
        "**Evaluation Criteria:** Focus on keeping changes that are **necessary and meaningful**:\n"
        "- **KEEP Modifications/Insertions if they:**\n"
        "    - Correct factual errors or inaccuracies.\n"
        "    - Add crucial details, examples, or constraints essential for correctness (e.g., specific ABI rules, PIC requirements, syntax nuances).\n"
        "    - Significantly improve clarity or remove ambiguity in instructions.\n"
        "    - Introduce demonstrably better practices or warnings.\n"
        "- **KEEP Deletions if the removed line is:**\n"
        "    - **Clearly redundant:** e.g., the exact same information is stated better elsewhere, or it repeats a point unnecessarily without adding clear value.\n"
        "    - **Factually incorrect or misleading.**\n"
        "    - **Directly conflicts with other, more accurate instructions being kept.**\n"
        "    - **Overly vague and provides no actionable guidance.**\n"
        "==> **Evaluate deletions critically.** While preserving valuable existing guidance and experience is important, **you should remove lines that genuinely meet the deletion criteria above (redundancy, error, conflict, vagueness), as keeping them actually degrades the prompt's overall quality.** The goal is the *most effective* prompt, which sometimes requires removing clutter or correcting errors. Avoid unnecessary or unjustified deletions, however, as they can also degrade prompt quality.\n\n"

        # 3. Explain the Format of the Changes Presented
        "**Proposed Changes Format:**\n"
        "- Each line is prefixed with `[line <number>, <status>]`.\n"
        "- `not modified`: Shown for context, requires no action.\n"
        "- `deleted`: Shows a line proposed for removal.\n"
        "- `inserted`: Shows a line proposed for addition.\n"
        "- `modified`: Shows the line `before modified` and `after modified`. Keeping this change means accepting the 'after' version.\n\n"

        # 4. Show the Actual Changes
        "------------------------ Proposed Changes ------------------------\n"
        + "\n".join(prompt_lines) +
        "\n------------------------------------------------------------------\n\n"

        # # 5. Give Clear Instructions on How to Respond
        # "**Your Response:**\n"
        # "Based on your evaluation using the criteria above, identify the display line numbers corresponding to the changes (deleted, inserted, modified) that you judge should be **APPLIED**.\n"
        # "List ONLY these numbers in the specified format below. Do not include explanations or any other text.\n\n"

        # # 6. Specify the Strict Output Format
        # "**Output Format:**\n"
        # "```applied changes\n" # Changed language slightly for clarity
        # "[line_num1, line_num2, ...]\n"
        # "```\n\n"
        # "**For Example:**\n"
        # "```applied changes\n"
        # "[3, 7, 12, 14]\n"
        # "```"

        "**Your Response Should Include Two Parts:**\n\n"

        "**Part 1: Analysis**\n"
        "Provide your evaluation of the proposed changes, highlighting:\n"
        "- Particularly valuable improvements\n"
        "- Any questionable changes that might need reconsideration\n"
        "- Overall impact on prompt quality\n"
        "- Any missing changes that should be considered\n\n"
        
        "**Part 2: Applied Changes**\n"
        "After your analysis, provide the FINAL decision in the exact format below.\n"
        "This must be the last part of your response and must follow this format exactly:\n\n"
        "**Output Format:**\n"
        "```applied changes\n" # Changed language slightly for clarity
        "[line_num1, line_num2, ...]\n"
        "```\n\n"
        "**For Example:**\n"
        "```applied changes\n"
        "[3, 7, 12, 14]\n"
        "```"
    )

    return review_prompt, sorted(list(set(change_line_numbers)))

def update_prompt(kept_changes, analyzed_diff):
    applied_modifications = 0
    applied_deletions = 0
    applied_insertions = 0
    new_lines = []
    for block in analyzed_diff:
        btype = block['type']
        original_lines = block.get('original_lines', [])
        modified_lines = block.get('modified_lines', [])

        if btype == 'equal':
            # 未改动的行总是保留
            new_lines.extend(block['original_lines'])

        elif btype == 'delete':
            # 删除：只有当用户“保留删除”时才真正删除
            # kept_changes 中包含这一行号，才执行删除 => 跳过；否则保留
            if block.get('display_line') in kept_changes:
                applied_deletions += 1
            else:
                new_lines.extend(block['original_lines'])

        elif btype == 'insert':
            # 插入：只有当用户“保留插入”时才添加
            if block.get('display_line') in kept_changes:
                new_lines.extend(block['modified_lines'])
                applied_insertions += 1

        elif btype == 'modify':
            # 修改：保留 modified（after）或回退 original（before）
            if block.get('display_line') in kept_changes:
                new_lines.extend(block['modified_lines'])
                applied_modifications += 1
            else:
                new_lines.extend(block['original_lines'])

    new_prompt = "\n".join(new_lines)
    new_prompt = '\n'.join([line for line in new_prompt.splitlines() if line.strip()])
    update_summary = {
        'modifications': applied_modifications,
        'deletions': applied_deletions,
        'insertions': applied_insertions,
    }
    return new_prompt, update_summary

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generic train/valid/test entry for NeuComBack datasets.")
    parser.add_argument("--level", choices=AVAILABLE_LEVELS, required=True, help="Select NeuComBackDataset level.")
    parser.add_argument("--model", default=MODEL, help="LLM model name.")
    parser.add_argument("--epoch-size", type=int, default=EPOCH_SIZE, help="Number of epochs.")
    parser.add_argument("--batch-size", type=int, default=BATCH_SIZE, help="Batch size.")
    parser.add_argument("--debug-size", type=int, default=None, help="Override self-debug rounds.")
    parser.add_argument("--optimi-depth", type=int, default=OPTIMI_DEPTH, help="Optimization depth.")
    args = parser.parse_args()

    from chatbot import ChatBot_API as ChatBot

    level_config = configure_level(args.level)
    MODEL = args.model
    EPOCH_SIZE = args.epoch_size
    BATCH_SIZE = args.batch_size
    DEBUG_SIZE = level_config.DEFAULT_DEBUG_SIZE if args.debug_size is None else args.debug_size
    OPTIMI_DEPTH = args.optimi_depth

    timestamp = time.strftime("%Y%m%d_%H%M%S")
    work_dir = os.path.join(f"{RESULT_DIR}/.ws", f".{timestamp}")
    os.makedirs(work_dir, exist_ok=True)
    safe_model = MODEL.replace("/", "_")
    save_dir = os.path.join(f"{RESULT_DIR}/", f"{timestamp}-{safe_model}-BATCH_SIZE_{BATCH_SIZE}-DEBUG_SIZE_{DEBUG_SIZE}")
    os.makedirs(save_dir, exist_ok=True)
    reference_params = None
    if REFERENCE_PARAMS_FILE:
        with open(REFERENCE_PARAMS_FILE, "r") as f:
            reference_params = json.load(f)

    class Logger(object):
        def __init__(self, filename, stream):
            self.terminal = stream
            self.log = open(filename, "a", encoding="utf-8")
        def write(self, message):
            self.terminal.write(message)
            self.log.write(message)
        def flush(self):
            self.terminal.flush()
            self.log.flush()
    sys.stdout = Logger(f"{save_dir}/log.txt", sys.stdout)

    # *初始化 Prompt
    base_correctness_template = \
"""
```llvm ir
{}
```
You are an expert in IR code and assembly code. Please help me translate the given IR code into x86_64 GNU assembly code (using AT&T format).

Note that:
1. You MUST use the following template to give out the complete, final target assembly code, and MUST NOT apply this template to any other part of your response:
```assembly
...(Provide the assembly code here)
```
2. Do not return any information other than the assembly code."""

    base_performance_template = \
"""
```llvm ir
{}
```

```assembly
{}
```

You are an expert in IR code and assembly code. Above is a piece of IR code and its corresponding assembly translation (x86_64 GNU assembly code, using AT&T format), which is functionally correct. Please help me optimize this assembly code to achieve better performance, while strictly ensuring that its functionality remains identical to the original.

Note that:
1. You MUST use the following template to give out the complete, final target assembly code, and MUST NOT apply this template to any other part of your response:
```assembly
...(Provide the assembly code here)
```
2. Do not return any information other than the assembly code."""

    current_error_prompt = base_error_prompt = \
"""3. Additionally, to guarantee the correctness of the generated assembly code, please ensure that:
    (None)
"""

    current_speedup_prompt = base_speedup_prompt = \
"""4. Additionally, to enhance the performance of the generated assembly code, consider the following strategies and areas for potential optimization:
    (None)
"""

    debug_template = \
"""
```error message
{}
```
Please help me correct the error with the error message.

Note that:
1. You MUST use the following template to give out the complete, final target assembly code, and MUST NOT apply this template to any other part of your response:
```assembly
...(Provide the assembly code here)
```
2. Do not return any information other than the assembly code."""

    error_extract_prompt = \
"""
In the conversation above, the user provided AI with a piece of IR code and asked AI to generate the corresponding assembly code. By utilizing the error messages given by the user as feedback, AI eventually corrected the mistakes and provided the accurate target assembly code.

Now, please analyze the conversation based on the following aspects:
- **Which errors were present in the AI-generated code during each iteration?**
- **Which correct and meaningful fixes were applied in each debug iteration?**
(Tip: You can compare the assembly code from the previous round to determine the modifications made by the AI in the current round. Additionally, you can use the error feedback from the next round to judge whether the AI's current modifications are correct and meaningful.)
Please consolidate your entire analysis into a single code block strictly formatted as follows:
```analysis
# Chat Round 1
## Errors
...

# Chat Round 2
## Fixes Applied (for Errors in Round 1)
...
## Errors
...

# Chat Round 3
## Fixes Applied (for Errors in Round 2)
...
## Errors
...

...(Additional Chat Rounds (if any))
```

After conducting the analysis, extract insights that you believe will be helpful for performing similar tasks (translating IR code to assembly code) in the future, particularly to help avoid repeating similar mistakes.
Please consolidate all of your insights into a single code block strictly formatted as follows:
```insights
1. ...
2. ...
3. ...
...
```"""

    error_merge_template = \
"""
The above content contains several analyses of common issues and summarized insights gained from translating IR code into assembly code. Based on these findings, please improve the following prompt fragment:
```prompt
{}
```

Note that:
    - Considering the provided analysis and insights, you need to determine whether additional error-related guidelines should be included or existing instructions should be refined.
    - Ensure that the listed error scenarios remain sufficiently general to be useful in a wider range of tasks.
    - If certain error scenarios require additional details, provide a detailed description as needed.
    - If some guidelines are similar or fall into the same category, consider combining and organizing them for clarity and conciseness.
    (Apply necessary modifications; avoid extensive rewriting to the existing prompt content; preserve the original structure and general wording where it remains effective, refining or reorganizing primarily where the analysis suggests improvements for clarity or correctness.)

Please present your improved prompt fragment strictly in the following format:
```modified prompt
3. Additionally, to guarantee the correctness of the generated assembly code, please ensure that:
    - ... 
    - ...
    - ...
    ... 
```
"""

    speedup_extract_prompt = \
"""
In the conversation above, the user provided AI with a piece of IR code and its corresponding assembly translation, which is functionally correct. The user then asked the AI to optimize the assembly code for better performance while maintaining functional equivalence. Through iterative refinement, the AI eventually provided the final optimized assembly code.

Now, please analyze the conversation based on the following aspects:
- **What suboptimal patterns or potential performance bottlenecks were present in the assembly code before each optimization step?**(e.g., inefficient instruction sequences, unnecessary memory accesses, loop structure issues, missed instruction-level parallelism)
- **What specific optimization techniques were applied in each iteration, and why were they considered effective for the given code context?** (e.g., loop unrolling, instruction reordering, register usage improvement, replacing complex instructions)
- **Were certain optimizations obviously beneficial, while others potentially beneficial but requiring further verification or testing? Please explicitly distinguish between these cases.**
(Tip: You can compare the assembly code from the previous round to identify the modifications made by the AI in the current round. Additionally, you can use the error feedback from the next round to judge whether the AI's current modifications are correct and meaningful.)
Please consolidate your entire analysis into a single code block strictly formatted as follows:
```analysis
# Chat Round 1
## Suboptimal Patterns / Bottlenecks
...

# Chat Round 2
## Effective Optimizations Applied (for Suboptimal Patterns / Bottlenecks in Round 1)
...
## Suboptimal Patterns / Bottlenecks
...

# Chat Round 3
## Effective Optimizations Applied (for Suboptimal Patterns / Bottlenecks in Round 2)
...
## Suboptimal Patterns / Bottlenecks
...

...(Additional Chat Rounds (if any))
```

After conducting the analysis, extract insights that could guide future assembly optimization tasks. Focus on identifying principles or heuristics for *when* and *how* to apply different optimization techniques effectively, considering potential trade-offs (e.g., code size vs. speed, latency vs. throughput) while maintaining correctness.
Please consolidate all of your insights into a single code block strictly formatted as follows:
```insights
1. ...
2. ...
3. ...
...
```"""

    speedup_merge_template = \
"""
The above content contains several analyses of performance optimization techniques and summarized insights gained from optimizing assembly code derived from IR code. Based on these findings, please improve the following prompt fragment:
```prompt
{}
```

Note that:
    - Considering the provided analysis and insights, you need to determine whether additional performance-related guidelines should be included or existing instructions should be refined.
    - The target prompt should provide clear guidance on *when* specific optimization techniques are most applicable and *how* they can be effectively implemented, leading to better optimization choices.
    - Guidelines should distinguish between optimization techniques that are generally effective versus those situationally dependent or requiring empirical verification.
    - Guidelines should focusing on how to systematically identify and analyze performance bottlenecks, rather than providing rigidly prescriptive optimization guidelines.
    - Keep guidelines sufficiently general to maintain broad applicability, yet detailed enough to inform targeted decision-making.
    - If certain optimization guidelines require additional details, provide a detailed description as needed.
    - If some guidelines are similar or fall into the same category, consider combining and organizing them for clarity and conciseness.
    (Apply necessary modifications; avoid extensive rewriting to the existing prompt content; preserve the original structure and general wording where it remains effective, refining or reorganizing primarily where the analysis suggests improvements for clarity or correctness.)

Please present your improved prompt fragment strictly in the following format:
```modified prompt
4. Additionally, to enhance the performance of the generated assembly code, consider the following strategies and areas for potential optimization:
    - ... 
    - ...
    - ...
    ... 
```
"""

    for epoch_id in range(EPOCH_SIZE):

        # 记录 epoch 开始时间
        epoch_start_time = time.time()

        # **************************************************
        # *功能正确性学习（训练集）
        # **************************************************

        # *加载数据，划分 batch
        func_names = get_func_names(split='train')
        random.shuffle(func_names)
        func_batches = [func_names[i:i + BATCH_SIZE] for i in range(0, len(func_names), BATCH_SIZE)]

        # *创建一个字典，用于存储每个样本对应的 ChatBot 实例及状态
        chatbot_dict_correctness = {}
        # 初始化 chatbot
        for func_name in func_names:
            chatbot = ChatBot(model=MODEL)
            chatbot.clear()
            # 以函数名或者函数本身作为键，值为包含实例与标志的字典
            chatbot_dict_correctness[func_name] = {
                'chatbot': chatbot,
                'error_message': None,  # 测试过程中最新的错误信息，也可指示测试过程中是否遇到过错误
                'generated_code': None,  # 测试过程中最新的代码
                'solved': False,  # 被测任务最终是否被解决
                'timing': None,  # 测试代码的执行时间
            }

        # *遍历每个 batch
        for func_batch in func_batches:

            print(">"*50)
            print(f"E{epoch_id+1} (Correctness) Current Batch Start:", func_batch)
            print(">"*50)

            # *遍历 batch 中的每个样本生成回答并执行测试
            # 初始生成1次回答 + DEBUG_SIZE 轮 self-debug，即总共 (DEBUG_SIZE+1) 次迭代
            for debug_round in range(DEBUG_SIZE + 1):
                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Current Round (Gen):", debug_round)
                print("="*50)

                # *第一阶段：并行生成 Asm Code
                with ThreadPoolExecutor(max_workers=BATCH_SIZE) as executor:
                    futures = {executor.submit(generate_func_correctness, func_name, chatbot_dict_correctness, current_error_prompt): func_name for func_name in func_batch}
                    for future in as_completed(futures):
                        _ = future.result()

                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Current Round (Test):", debug_round)
                print("="*50)

                # *第二阶段：全部生成完成后，再并行进行测试（提交到服务器运行脚本上）
                test_func(func_batch, chatbot_dict_correctness, work_dir, reference_params)

            print("<"*50)
            print(f"E{epoch_id+1} (Correctness) Current Batch End:", func_batch)
            print("<"*50)

            # *存储当前 batch 中每个样本的历史记录
            print(">"*50)
            print(f"E{epoch_id+1} Saving batch_correctness_chat_history ...")
            print(">"*50)
            # 将当前 batch 中每个样本的历史记录写入 epoch_chat_history.jsonl 文件
            ecch_path = f"{save_dir}/epoch{epoch_id+1}_correctness_chat_history.jsonl"
            with open(ecch_path, "a", encoding="utf-8") as f:
                for func_name in func_batch:
                    record = {
                        'func_name': func_name,
                        'split': 'train',
                        'chatbot_history': chatbot_dict_correctness[func_name]['chatbot'].history,
                        'error_message': chatbot_dict_correctness[func_name]['error_message'],
                        'solved': chatbot_dict_correctness[func_name]['solved'],
                        'generated_code': chatbot_dict_correctness[func_name]['generated_code'],
                        'timing': chatbot_dict_correctness[func_name]['timing'],
                    }
                    f.write(json.dumps(record, ensure_ascii=False) + "\n")
            print("<"*50)
            print(f"E{epoch_id+1} Saved!")
            print("<"*50)

            # *根据当前 batch 中的 debug 轨迹，改进 prompt
            # 收集有用的 self-debug 轨迹
            debug_batch = []
            debug_trails = []
            for func_name in func_batch:
                # 存在过错误并最终被解决掉的例子
                if chatbot_dict_correctness[func_name]['error_message'] and chatbot_dict_correctness[func_name]['solved']:
                    debug_batch.append(func_name)
                    debug_trails.append(chatbot_dict_correctness[func_name]['chatbot'].history)

            print(">"*50)
            print(f"E{epoch_id+1} (Correctness) Improve Prompt Start: Based on", debug_batch, "/", func_batch)
            print(">"*50)

            # 收集关于 self-debug 轨迹的分析和总结
            print("="*50)
            print(f"E{epoch_id+1} (Correctness) Analyses And Insights")
            print("="*50)
            # 并行处理所有调试轨迹
            debug_analyses_and_insights = []
            with ThreadPoolExecutor(max_workers=5) as executor:
                futures = [executor.submit(process_debug_trail, dt) for dt in debug_trails]
                for future in as_completed(futures):
                    debug_analyses_and_insights.append(future.result())
            print("*" * 50)

            # 合并改进当前的 error_prompt
            # 如果没有，则不进行改进
            if len(debug_batch) > 0:
                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Merge And Improve")
                print("="*50)
                # LLM 生成初始的修改版本
                separator = "="*20
                formatted_analyses_and_insights = ""
                for analysis_and_insight in debug_analyses_and_insights:
                    formatted_analyses_and_insights += separator + "\n"
                    formatted_analyses_and_insights += analysis_and_insight + "\n\n"
                formatted_analyses_and_insights += separator + "\n"
                prompt = formatted_analyses_and_insights + "\n" + error_merge_template.format(current_error_prompt)
                print("-"*50)
                print("Modify Prompt")
                print("-"*50)
                print(prompt)
                chatbot = ChatBot(model=MODEL)
                chatbot.clear()
                response = chatbot.answer(prompt)
                print("-"*50)
                print("Response")
                print("-"*50)
                print(response)
                direct_modified_prompt = chatbot.analyze(response, language='modified prompt')
                # 分析修改前后的 Prompt 的差异
                analyzed_diff = analyze_line_diff(current_error_prompt, direct_modified_prompt)
                # 构建差异审查 Prompt
                llm_review_prompt, changed_lines = build_llm_diff_prompt(analyzed_diff)
                # 调用 LLM 过滤不必要的修改
                print("-"*50)
                print("Review Comparison Prompt")
                print("-"*50)
                print(llm_review_prompt)
                response = chatbot.ask_once(llm_review_prompt)
                print("-"*50)
                print("Total Changes")
                print("-"*50)
                print(changed_lines)
                print("-"*50)
                print("Response")
                print("-"*50)
                print(response)
                kept_changes_str = chatbot.analyze(response, "applied changes")
                try:
                    kept_changes = ast.literal_eval(kept_changes_str)
                    # 确保是整数列表
                    if not (isinstance(kept_changes, list) and all(isinstance(x, int) for x in kept_changes)):
                        raise ValueError
                except Exception:
                    kept_changes = []
                # 更新 prompt
                current_error_prompt, update_summary = update_prompt(kept_changes, analyzed_diff)
                print("-"*50)
                print("Final Modified Prompt")
                print("-"*50)
                print(current_error_prompt)
                print("-"*50)
                print("Update Summary")
                print("-"*50)
                print(update_summary)
            else:
                update_summary = None

            print("<"*50)
            print(f"E{epoch_id+1} (Correctness) Improve Prompt End: Based on", debug_batch, "/", func_batch)
            print("<"*50)

            # *存储当前 batch 中 prompt 改进的历史记录
            print(">"*50)
            print(f"E{epoch_id+1} Saving batch_correctness_prompt_trail ...")
            print(">"*50)
            # 将当前 batch 的 prompt 改进记录写入 epoch_prompt_trail.jsonl 文件
            ecpt_path = f"{save_dir}/epoch{epoch_id+1}_correctness_prompt_trail.jsonl"
            with open(ecpt_path, "a", encoding="utf-8") as f:
                record = {
                    'func_batch': func_batch,
                    'debug_batch': debug_batch,
                    'analyses_and_insights': debug_analyses_and_insights,
                    'prompt_history': current_error_prompt,
                    'update_summary': update_summary,
                }
                f.write(json.dumps(record, ensure_ascii=False) + "\n")
            print("<"*50)
            print(f"E{epoch_id+1} Saved!")
            print("<"*50)

        # **************************************************
        # *功能正确性验证（验证集）
        # **************************************************

        # *加载数据，划分 batch
        func_names = get_func_names(split='valid')
        random.shuffle(func_names)
        func_batches = [func_names[i:i + BATCH_SIZE] for i in range(0, len(func_names), BATCH_SIZE)]

        # *创建一个字典，用于存储每个样本对应的 ChatBot 实例及状态
        chatbot_dict_correctness = {}
        # 初始化 chatbot
        for func_name in func_names:
            chatbot = ChatBot(model=MODEL)
            chatbot.clear()
            # 以函数名或者函数本身作为键，值为包含实例与标志的字典
            chatbot_dict_correctness[func_name] = {
                'chatbot': chatbot,
                'error_message': None,  # 测试过程中最新的错误信息，也可指示测试过程中是否遇到过错误
                'generated_code': None,  # 测试过程中最新的代码
                'solved': False,  # 被测任务最终是否被解决
                'timing': None,  # 测试代码的执行时间
            }

        # *遍历每个 batch
        for func_batch in func_batches:

            print(">"*50)
            print(f"E{epoch_id+1} (Correctness) Current Batch Start:", func_batch)
            print(">"*50)

            # *遍历 batch 中的每个样本生成回答并执行测试
            # 初始生成1次回答 + DEBUG_SIZE 轮 self-debug，即总共 (DEBUG_SIZE+1) 次迭代
            for debug_round in range(DEBUG_SIZE + 1):
                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Current Round (Gen):", debug_round)
                print("="*50)

                # *第一阶段：并行生成 Asm Code
                with ThreadPoolExecutor(max_workers=BATCH_SIZE) as executor:
                    futures = {executor.submit(generate_func_correctness, func_name, chatbot_dict_correctness, current_error_prompt): func_name for func_name in func_batch}
                    for future in as_completed(futures):
                        _ = future.result()

                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Current Round (Test):", debug_round)
                print("="*50)

                # *第二阶段：全部生成完成后，再并行进行测试（提交到服务器运行脚本上）
                test_func(func_batch, chatbot_dict_correctness, work_dir, reference_params)

            print("<"*50)
            print(f"E{epoch_id+1} (Correctness) Current Batch End:", func_batch)
            print("<"*50)

            # *存储当前 batch 中每个样本的历史记录
            print(">"*50)
            print(f"E{epoch_id+1} Saving batch_correctness_chat_history ...")
            print(">"*50)
            # 将当前 batch 中每个样本的历史记录写入 epoch_chat_history.jsonl 文件
            ecch_path = f"{save_dir}/epoch{epoch_id+1}_correctness_chat_history.jsonl"
            with open(ecch_path, "a", encoding="utf-8") as f:
                for func_name in func_batch:
                    record = {
                        'func_name': func_name,
                        'split': 'valid',
                        'chatbot_history': chatbot_dict_correctness[func_name]['chatbot'].history,
                        'error_message': chatbot_dict_correctness[func_name]['error_message'],
                        'solved': chatbot_dict_correctness[func_name]['solved'],
                        'generated_code': chatbot_dict_correctness[func_name]['generated_code'],
                        'timing': chatbot_dict_correctness[func_name]['timing'],
                    }
                    f.write(json.dumps(record, ensure_ascii=False) + "\n")
            print("<"*50)
            print(f"E{epoch_id+1} Saved!")
            print("<"*50)

        # **************************************************
        # *功能正确性测试（测试集）
        # **************************************************

        # *加载数据，划分 batch
        func_names = get_func_names(split='test')
        random.shuffle(func_names)
        func_batches = [func_names[i:i + BATCH_SIZE] for i in range(0, len(func_names), BATCH_SIZE)]

        # *创建一个字典，用于存储每个样本对应的 ChatBot 实例及状态
        chatbot_dict_correctness = {}
        # 初始化 chatbot
        for func_name in func_names:
            chatbot = ChatBot(model=MODEL)
            chatbot.clear()
            # 以函数名或者函数本身作为键，值为包含实例与标志的字典
            chatbot_dict_correctness[func_name] = {
                'chatbot': chatbot,
                'error_message': None,  # 测试过程中最新的错误信息，也可指示测试过程中是否遇到过错误
                'generated_code': None,  # 测试过程中最新的代码
                'solved': False,  # 被测任务最终是否被解决
                'timing': None,  # 测试代码的执行时间
            }

        # *遍历每个 batch
        for func_batch in func_batches:

            print(">"*50)
            print(f"E{epoch_id+1} (Correctness) Current Batch Start:", func_batch)
            print(">"*50)

            # *遍历 batch 中的每个样本生成回答并执行测试
            # 初始生成1次回答 + DEBUG_SIZE 轮 self-debug，即总共 (DEBUG_SIZE+1) 次迭代
            for debug_round in range(DEBUG_SIZE + 1):
                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Current Round (Gen):", debug_round)
                print("="*50)

                # *第一阶段：并行生成 Asm Code
                with ThreadPoolExecutor(max_workers=BATCH_SIZE) as executor:
                    futures = {executor.submit(generate_func_correctness, func_name, chatbot_dict_correctness, current_error_prompt): func_name for func_name in func_batch}
                    for future in as_completed(futures):
                        _ = future.result()

                print("="*50)
                print(f"E{epoch_id+1} (Correctness) Current Round (Test):", debug_round)
                print("="*50)

                # *第二阶段：全部生成完成后，再并行进行测试（提交到服务器运行脚本上）
                test_func(func_batch, chatbot_dict_correctness, work_dir, reference_params)

            print("<"*50)
            print(f"E{epoch_id+1} (Correctness) Current Batch End:", func_batch)
            print("<"*50)

            # *存储当前 batch 中每个样本的历史记录
            print(">"*50)
            print(f"E{epoch_id+1} Saving batch_correctness_chat_history ...")
            print(">"*50)
            # 将当前 batch 中每个样本的历史记录写入 epoch_chat_history.jsonl 文件
            ecch_path = f"{save_dir}/epoch{epoch_id+1}_correctness_chat_history.jsonl"
            with open(ecch_path, "a", encoding="utf-8") as f:
                for func_name in func_batch:
                    record = {
                        'func_name': func_name,
                        'split': 'test',
                        'chatbot_history': chatbot_dict_correctness[func_name]['chatbot'].history,
                        'error_message': chatbot_dict_correctness[func_name]['error_message'],
                        'solved': chatbot_dict_correctness[func_name]['solved'],
                        'generated_code': chatbot_dict_correctness[func_name]['generated_code'],
                        'timing': chatbot_dict_correctness[func_name]['timing'],
                    }
                    f.write(json.dumps(record, ensure_ascii=False) + "\n")
            print("<"*50)
            print(f"E{epoch_id+1} Saved!")
            print("<"*50)


        # 计算并打印 epoch 耗时
        epoch_end_time = time.time()
        epoch_duration_seconds = epoch_end_time - epoch_start_time
        epoch_duration_minutes = epoch_duration_seconds / 60  # 将秒转换为分钟
        print(f"Epoch {epoch_id+1} completed in {epoch_duration_minutes:.2f} minutes.")
