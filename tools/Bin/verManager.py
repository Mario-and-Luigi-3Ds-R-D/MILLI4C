import os
from pathlib import Path

versions = {
    "US_1.0": "c5cf607de6ad4db19a0ea2fe2423f94c927d7daa1dc77aecc62153b9467e4211",
    "EU_1.0": "e1d7e188ff88467df776c17cec45c44857fadf5b699944baa8cddcae7d939e64",
    "JP_1.0": "885dcaed5994076732b1f99e452a6f06493c23464ae0509ebbf44b8c6fd614a7",
    "KR_1.0": "820940dc19b86f8d47515973d9f1484c4efc0571a729c294e85b53e5097fda56",
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