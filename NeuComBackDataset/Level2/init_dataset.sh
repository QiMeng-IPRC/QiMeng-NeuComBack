#!/bin/bash

# 设置输入和输出目录
input_dir="task_c"
output_dir="task_ir_O3"

# 创建输出目录（如果不存在）
mkdir -p "$output_dir"

# 遍历并处理所有 _inner.c 文件
for c_file in "$input_dir"/*_inner.c; do
    if [[ -f "$c_file" ]]; then
        # 获取文件名和基名
        filename=$(basename -- "$c_file")
        base="${filename%.*}"
        
        # 输出文件路径
        ll_ori_file="$output_dir/${base}_ori.ll"
        ll_file="$output_dir/${base}.ll"
        
        # 使用 clang 生成 .ll 文件
        clang -O3 -S -emit-llvm -o "$ll_ori_file" -c "$c_file"
        
        # 使用 opt 生成优化后的 .ll 文件
        opt -O3 -S -o "$ll_file" "$ll_ori_file"
        

        rm -f "$ll_ori_file"

        echo "Generated: $ll_ori_file and $ll_file"
    fi
done

echo "All _inner.c files have been compiled to IR in $output_dir"

# 设置输入和输出目录
input_dir="task_c"
output_dir="task_ir_O0"

# 创建输出目录（如果不存在）
mkdir -p "$output_dir"

# 遍历并处理所有 _inner.c 文件
for c_file in "$input_dir"/*_inner.c; do
    if [[ -f "$c_file" ]]; then
        # 获取文件名和基名
        filename=$(basename -- "$c_file")
        base="${filename%.*}"
        
        # 输出文件路径
        ll_ori_file="$output_dir/${base}_ori.ll"
        ll_file="$output_dir/${base}.ll"
        
        # 使用 clang 生成 .ll 文件
        clang -O0 -S -emit-llvm -o "$ll_ori_file" -c "$c_file"
        
        # 使用 opt 生成优化后的 .ll 文件
        opt -O0 -S -o "$ll_file" "$ll_ori_file"
        
        rm -f "$ll_ori_file"

        echo "Generated: $ll_ori_file and $ll_file"
    fi
done

echo "All _inner.c files have been compiled to IR in $output_dir"
