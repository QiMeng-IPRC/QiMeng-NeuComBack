# QiMeng-NeuComBack (Demo Release)

## Overview

- `main.py`: 主入口，按 `Level1` / `Level2` 选择数据集
- `train_valid_test.py`: 通用训练/验证/测试脚本

## System tools

依赖以下系统工具：

- `clang`
- `clang++`
- `opt`
- Slurm: `sbatch`, `squeue`, `scancel`

其中：

- 运行 `Level1` / `Level2` 测试需要 `clang`、`clang++`、Slurm
- 重新生成 `Level2/task_ir_O0`、`Level2/task_ir_O3` 需要 `opt`
- 重新测量 `Level2/newTSVC/standard_params_IR.json` 也需要 `clang`

可以先确认命令是否存在：

```bash
clang --version
clang++ --version
opt --version
sbatch --version
```

## API Key

示例：

```bash
export ARK_API_KEY=your_ark_api_key
```

或：

```bash
export OPENAI_API_KEY=your_openai_api_key
```

## Dataset Initialization

### Level1

`Level1` 当前仓库已经自带完整运行数据，不需要额外初始化。

### Level2

#### 1. 运行当前 `Level2` 测试

当前仓库已经自带运行所需快照：

- `NeuComBackDataset/Level2/newTSVC/standard_params_IR.json`
- `NeuComBackDataset/Level2/newTSVC/tmp/*.ll`
- `NeuComBackDataset/Level2/newTSVC/tmp/*.o`

如果你的目标只是运行当前代码，不需要额外初始化。

#### 2. 重新生成 `task_ir_O0` / `task_ir_O3`

如果你想从 `task_c/*.c` 重新生成 IR，可以执行：

```bash
cd NeuComBackDataset/Level2
bash init_dataset.sh
```

#### 3. 重新测量性能

如果你要重新测量 `Level2` 的标准参数：

```bash
cd NeuComBackDataset/Level2/newTSVC
python c2asm.py --mode IR2asm --task standard
```

或提交 Slurm 脚本：

```bash
cd NeuComBackDataset/Level2/newTSVC
sbatch generate_standard.sh
```

这会重新生成或刷新：

- `newTSVC/tmp/` 下的标准工件
- `newTSVC/standard_params_IR.json`

注意：

- `standard_params_IR.json` 中的时间值和机器环境有关
- 换机器重跑后，`O0` / `O3` 可能不同

## Run

### 主入口

运行 `Level1`：

```bash
python main.py --level Level1
```

运行 `Level2`：

```bash
python main.py --level Level2
```
