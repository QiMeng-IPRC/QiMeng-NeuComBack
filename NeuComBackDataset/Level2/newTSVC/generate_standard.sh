#!/bin/bash
# *激活 conda 环境
# source .../conda.sh
# conda activate ...

# *执行任务
# python c2asm.py --mode c2asm --task standard  # c2asm任务，在tmp文件夹下生成标准asm文件，并执行运行、记录运行时间（区分O0和O3）、校验和、循环数量
# python c2asm.py --mode c2IR --task standard  # c2IR任务，在tmp文件夹生成标准IR文件，并执行运行、记录运行时间（区分O0和O3）、校验和、循环数量
# python c2asm.py --mode IR2IR --task standard  # IR2IR任务，在tmp文件夹生成标准IR文件，并执行运行、记录运行时间（区分O0和O3）、校验和、循环数量
python c2asm.py --mode IR2asm --task standard  # IR2asm任务，在tmp文件夹下生成标准asm文件，并执行运行、记录运行时间（区分O0和O3）、校验和、循环数量
