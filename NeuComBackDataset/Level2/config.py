from pathlib import Path


LEVEL_NAME = "Level2"
LEVEL_PATH = Path(__file__).resolve().parent
DATA_MODULE = "NeuComBackDataset.Level2.data_tools"
ANALYSE_MODULE = "NeuComBackDataset.Level2.analyse_func_srun"
RESULT_DIR = "result_Level2"
DEFAULT_DEBUG_SIZE = 2
REFERENCE_PARAMS_FILE = str(LEVEL_PATH / "newTSVC" / "standard_params_IR.json")
