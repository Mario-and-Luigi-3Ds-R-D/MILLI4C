 #Example config.txt
#------------------
#  Shop/config.txt
#  split_rodata = true
#  enable_rtti = true
#  bss_size = 0x1a0
 
from __future__ import annotations
from pathlib import Path
 
 
_DEFAULTS = {
    "split_rodata":  False,
    "bss_size":      None,
    "on_load":       None,
    "on_exit":       None,
    "on_unresolved": None,
}
 
 
class ROModuleConfig:
    def __init__(self):
        self.split_rodata:  bool       = False
        self.enable_rtti:   bool       = False
        self.bss_size:      int | None = None
        self.on_load:       str | None = None
        self.on_exit:       str | None = None
        self.on_unresolved: str | None = None
 
    def __repr__(self):
        return (f"ROModuleConfig(split_rodata={self.split_rodata}, "
                f"bss_size={self.bss_size}, on_load={self.on_load})")
 

# Load the config

def load_config(module_name: str, project_dir: str) -> ROModuleConfig:
    cfg = ROModuleConfig()
    path = Path(project_dir) / "data" / "RO" / module_name / "config.txt"
 
    if not path.exists():
        return cfg
 
    with open(path) as f:
        for line in f:
            line = line.split("#")[0].strip()
            if not line or "=" not in line:
                continue
            key, _, val = line.partition("=")
            key = key.strip().lower()
            val = val.strip().lower()
 
            if key in ("split_rodata", "has_rodata"):
                cfg.split_rodata = val in ("true", "1", "yes")
            elif key == "enable_rtti":
                cfg.enable_rtti = val in ("true", "1", "yes")
            elif key == "bss_size":
                try:
                    cfg.bss_size = int(val, 0)
                except ValueError:
                    print(f"  [CFG] {module_name}: invalid bss_size '{val}'")
            elif key == "on_load":
                cfg.on_load = val.strip()
            elif key == "on_exit":
                cfg.on_exit = val.strip()
            elif key == "on_unresolved":
                cfg.on_unresolved = val.strip()
 
    return cfg