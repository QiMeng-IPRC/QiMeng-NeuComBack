import json
import subprocess
from concurrent.futures import ProcessPoolExecutor
import statistics
import sys

common_inner_header = """\
extern __attribute__((aligned(64))) float flat_2d_array[256*256];
extern __attribute__((aligned(64))) float x[32000];
extern __attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
extern __attribute__((aligned(64))) int indx[32000];
extern float* __restrict__ xx;
extern float* yy;
extern int dummy(float[32000], float[32000], float[32000], float[32000], float[32000], float[256][256], float[256][256], float[256][256], float);
"""

common_main_header = """\
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include "common.h"
#include "array_defs.h"
__attribute__((aligned(64))) float flat_2d_array[256*256];
__attribute__((aligned(64))) float x[32000];
__attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
__attribute__((aligned(64))) int indx[32000];
float* __restrict__ xx;
float* yy;
int loop_count;
void s151s(float a[32000], float b[32000],  int m)
{
    for (int i = 0; i < 32000-1; i++) {
        a[i] = a[i + m] + b[i];
    }
}
void s152s(float a[32000], float b[32000], float c[32000], int i)
{
    a[i] += b[i] * c[i];
}
float test(float* A){
  float s = (float)0.0;
  for (int i = 0; i < 4; i++)
    s += A[i];
  return s;
}
int s471s(void)
{
    return 0;
}
float f(float a, float b){
    return a*b;
}
typedef float(*test_function_t)(struct args_t *);
void time_function(test_function_t vector_func, void * arg_info)
{
    struct args_t func_args = {.arg_info=arg_info};
    double result = vector_func(&func_args);
    double tic=func_args.t1.tv_sec+(func_args.t1.tv_usec/1000000.0);
    double toc=func_args.t2.tv_sec+(func_args.t2.tv_usec/1000000.0);
    double taken = toc-tic;

    printf("%10.3f\\t", taken);
    unsigned char* resultb = (unsigned char*)&result;
    for (int i = 0; i < 8; i++)
    {
        printf("%X", *(resultb+i));
    }
    printf("\\t%d\\n", loop_count);
}
"""

common_main = """\
extern int loop_count;
int main(int argc, char ** argv){{
    int n1 = 1;
    int n3 = 1;
    int* ip;
    loop_count = 0;
    float s1,s2;
    init(&ip, &s1, &s2);
    {}
    return EXIT_SUCCESS;
}}
"""

def compile_and_run(fname, optimization_level):
    # 编译 inner.c 为 .o 文件
    cmd1 = ["clang", f"-O{optimization_level}", "-c", f"opt/{fname}_inner.c", "-o", f"tmp/{fname}_inner_{optimization_level}.o", "-Icommon_files"]
    # 编译和链接其余部分
    cmd2 = ["clang", f"opt/{fname}_main.c", f"tmp/{fname}_inner_{optimization_level}.o", "common_files/common.c", "common_files/dummy.c", "-o", f"tmp/{fname}_{optimization_level}.out", "-lm", "-Icommon_files"]
    
    try:
        subprocess.run(cmd1, timeout=60, check=True)
        subprocess.run(cmd2, timeout=60, check=True)
        print(f"Compilation successful for {fname} with optimization level {optimization_level}")
        
        # 运行程序10次，记录运行时间
        run_times = []
        checksum = 0
        count = 0
        for _ in range(10):
            result = subprocess.run([f"tmp/{fname}_{optimization_level}.out"], capture_output=True, text=True, timeout=180, check=True)
            output_lines = result.stdout.strip().split('\n')
            for line in output_lines:
                parts = line.split('\t')
                if len(parts) == 4:
                    run_time = float(parts[1])
                    run_times.append(run_time)
                    checksum = float(parts[2])
                    count = int(parts[3])
        # 取较低的5个运行时间做平均
        if len(run_times) >= 5:
            run_times.sort()
            avg_time = statistics.mean(run_times[:5])
            print(f"Average of lowest 5 run times for {fname} with optimization level {optimization_level}: {avg_time:.3f}")
        else:
            print(f"Not enough run times to calculate average for {fname} with optimization level {optimization_level}")
        
        success_fnames.append((fname, optimization_level))
        return avg_time, checksum, count
    except subprocess.CalledProcessError as e:
        print(f"Compilation or execution failed for {fname} with optimization level {optimization_level}: {e}", file=sys.stderr)
    except Exception as e:
        print(f"An error occurred for {fname} with optimization level {optimization_level}: {e}", file=sys.stderr)
    
    # 返回默认值以确保并行化过程不会中断
    return None, None, None

def compile_and_run_wrapper(args):
    return compile_and_run(*args)

# Attention!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 注意！！！！！

# 这个文件已经弃用了，c2asm.py里已经有替代模块了。但是这个文件不能删除，因为c2asm.py依赖这个文件里的常量


if __name__ == "__main__":
    with open("tsvc_data_dict.json", "r") as f:
        data_dict = json.load(f)

    fnames = data_dict["list"][:]
    for fname in fnames:
        data_dict_content = data_dict[fname]
        inner_file = common_inner_header + data_dict_content["need_before"] + data_dict_content["inner"]
        main_file = common_main_header + data_dict_content["main"] + common_main.format(data_dict_content["time_func"])
        with open(f"opt/{fname}_inner.c", "w") as f:
            f.write(inner_file)
        with open(f"opt/{fname}_main.c", "w") as f:
            f.write(main_file)

    success_fnames = []

    # 提取标准参数（checksum 和 count）在 O0 优化级别下
    reference_params = {}

    # 将 O0 优化级别添加到优化级别列表中
    optimization_levels = ["0", "1", "2", "3"]
    all_tasks = [(fname, opt_level) for fname in fnames for opt_level in optimization_levels]

    with ProcessPoolExecutor(max_workers=12) as executor:
        results = list(executor.map(compile_and_run_wrapper, all_tasks))

    # 将结果存储到 reference_params 字典中
    for (fname, opt_level), (avg_time, checksum, count) in zip(all_tasks, results):
        if avg_time is not None:
            if opt_level == "0":
                reference_params[fname] = {
                    "O0": avg_time,
                    "checksum": checksum,
                    "count": count
                }
            else:
                if fname not in reference_params:
                    reference_params[fname] = {}
                reference_params[fname][f"O{opt_level}"] = avg_time

    # 将结果保存到文件
    with open("reference_params.json", "w") as f:
        json.dump(reference_params, f, indent=4)

    print(success_fnames)
