import argparse
import subprocess
import sys
from pathlib import Path

from NeuComBackDataset import AVAILABLE_LEVELS


PROJECT_ROOT = Path(__file__).resolve().parent


def build_command(args):
    command = [
        sys.executable,
        str(PROJECT_ROOT / "train_valid_test.py"),
        "--level",
        args.level,
    ]
    if args.model is not None:
        command.extend(["--model", args.model])
    if args.epoch_size is not None:
        command.extend(["--epoch-size", str(args.epoch_size)])
    if args.batch_size is not None:
        command.extend(["--batch-size", str(args.batch_size)])
    if args.debug_size is not None:
        command.extend(["--debug-size", str(args.debug_size)])
    if args.optimi_depth is not None:
        command.extend(["--optimi-depth", str(args.optimi_depth)])
    return command


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="NeuComBack main entry.")
    parser.add_argument("--level", choices=AVAILABLE_LEVELS, required=True, help="Select dataset level.")
    parser.add_argument("--model", help="LLM model name.")
    parser.add_argument("--epoch-size", type=int, help="Override epoch count.")
    parser.add_argument("--batch-size", type=int, help="Override batch size.")
    parser.add_argument("--debug-size", type=int, help="Override self-debug rounds.")
    parser.add_argument("--optimi-depth", type=int, help="Override optimization depth.")
    args = parser.parse_args()
    raise SystemExit(subprocess.call(build_command(args)))
