import sys
import ray
import json

try:
    from .data_tools import analyse_func
except ImportError:
    from data_tools import analyse_func

def run_distributed_tests(test_cases, work_dir, reference_params):
    """并行执行测试任务"""
    # 初始化 Ray
    if not ray.is_initialized():
        ray.init()
    
    # 提交所有测试任务
    futures = []
    for case in test_cases:
        future = analyse_func.remote(
            task="asm",
            func_name=case["func_name"],
            test_code=case["generated_code"],
            work_dir=work_dir,
            reference_params=reference_params[case["func_name"]],
            repeat=0  # 指生成时执行了多少次重采样；与测试时的统计次数无关
        )
        futures.append(future)
    
    # 实时收集结果
    test_results = []
    while futures:
        # 等待第一批完成的任务
        done, futures = ray.wait(futures, num_returns=1)
        
        # 处理每个完成的任务
        for result_id in done:
            try:
                test_result, log_output = ray.get(result_id)
                print("test_result", test_result)
                print("log_output", log_output)
                func_name = test_result["func_name"]
                
                test_results.append(test_result)
                    
            except Exception as e:
                print(f"Error processing result: {str(e)}")

    return test_results

if __name__ == "__main__":
    # 读取输入参数
    input_json_path = sys.argv[1]
    output_json_path = sys.argv[2]
    
    # 加载测试任务
    with open(input_json_path, "r") as f:
        test_data = json.load(f)
    
    # 并行执行测试
    test_results = run_distributed_tests(
        test_data["test_cases"],
        test_data["work_dir"],
        test_data["reference_params"]
    )
    
    # 写入结果
    with open(output_json_path, "w") as f:
        json.dump(test_results, f, indent=2)
