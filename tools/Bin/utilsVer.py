# Made by user Moddimation, WIP on Building System.

import os
import sys
import hashlib
from pathlib import Path
from .verManager import *

def get_versions():
    return list(versions.keys())

def is_ver_name(name):
    return name in versions.keys()

def is_ver_exist(version):
    return os.path.exists(_getExeFile(version))
    
def _getProjDir():
    return Path(os.path.realpath(__file__).split("tools")[0].rstrip(os.sep))

def _getExeFile(version):
    return str(Path(_getProjDir()) / "data"  / version / "code.bin")

def is_ver_valid(version):
    if not is_ver_name(version):
        return False

    return hashlib.sha256(Path(_getExeFile(version)).read_bytes()).hexdigest() == versions[version]

def get_file_ver(path):
    target_hash = hashlib.sha256(Path(path).read_bytes()).hexdigest()

    for key, value in versions.items():
        if value == target_hash:
            return key

    return None

try_bin_path = str(Path(_getProjDir()) / "data" / "code.bin")
def sort_bin_if_exist():
    if not os.path.exists(try_bin_path):
        return None

    ver = get_file_ver(try_bin_path)
    if not ver:
        print("data/code.bin does not correspond to any known version.")
        print("list of versions with SHA256:")
        for k, v in versions.items():
            print(k + ": " + v)
        sys.exit(1)
        return None

    dest_file_path = _getExeFile(ver)
    os.rename(try_bin_path, dest_file_path)

    print("found loose code.bin in data/, identified as " + ver + "version and moved to data/"+ver+"/code.bin")

    return ver