import importlib


AVAILABLE_LEVELS = ("Level1", "Level2")


def load_level_config(level_name: str):
    if level_name not in AVAILABLE_LEVELS:
        raise ValueError(f"Unsupported level: {level_name}")
    return importlib.import_module(f"NeuComBackDataset.{level_name}.config")
