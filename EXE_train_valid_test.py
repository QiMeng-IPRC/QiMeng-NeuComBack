import subprocess
import sys
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parent


if __name__ == "__main__":
    command = [
        sys.executable,
        str(PROJECT_ROOT / "train_valid_test.py"),
        "--level",
        "Level1",
        *sys.argv[1:],
    ]
    raise SystemExit(subprocess.call(command))
