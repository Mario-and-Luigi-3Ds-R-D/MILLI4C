# Made by user Moddimation, WIP on Building System.

import os
from pathlib import Path

versions = {
    "US_1.0": "c5cf607de6ad4db19a0ea2fe2423f94c927d7daa1dc77aecc62153b9467e4211", # Correct, obviously
    "EU_1.0": "42d8b37c6817a8324f8f4df7c4715cfdb33f9ce21db6259f526e22d5d6b11250", # Correct
    "JP_1.0": "563ebbc5000eff1d78cd00370c87abe7f81f5ed1b01f6303c3019f6f9ab328e5", # Correct
    "KR_1.0": "6e03dd902a4e1017f616f924e3170cfeeb66ef09e899a43183e14ccc7dda03bb", # Correct
}

def _getProjDir():
    return Path(os.path.realpath(__file__).split("tools")[0].rstrip(os.sep))
def getVerFile():
    return str(Path(_getProjDir()) / "data" / ".version")
def getDefaultVer():
    return 'US_1.0'

def get_ver():
    if not os.path.exists(getVerFile()):
        set_ver(getDefaultVer())
        print (f"Note: Using default version \'{getDefaultVer()}\'")

    with open(getVerFile(), 'r') as f:
        ver = f.read()

    if len(ver) < 2:
        print ("Error: invalid version file")

    return ver

def set_ver(version):
    with open(getVerFile(), 'w') as f:
        f.write(version)