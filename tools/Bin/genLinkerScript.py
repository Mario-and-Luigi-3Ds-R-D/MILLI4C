# Made by user Moddimation, WIP on Building System.

from Settings import *
from Bin.parseMap import *

def read_data_sym_file():
    import csv
    with open(getDataSymFile(), newline='') as f:
        syms = []
        reader = csv.reader(f, delimiter=',',quotechar='"')
        for row in reader:
            syms.append((int(row[0], 0), row[1]))
        return syms

def genLDScript():
    matching_data = '\n'
    const_data = '\n'
    syms = read_sym_file()
    data_syms = read_data_sym_file()
    syms = sorted(syms, key=lambda tup: tup[0])
    data_syms = sorted(data_syms, key=lambda tup: tup[0])
    for sym in syms:
        if (sym[3] and (sym[1] == 'm' or sym[1] == 'O')):
            matching_data += sym[3] + " " + "0x{:08x}\n".format(sym[0])
            matching_data += "{\n"
            matching_data += "\t" + sym[3] + " " + "0x{:08x}\n".format(sym[0])
            matching_data += "\t{\n"
            if sym[4] == "gdef":
                matching_data += "\t\t* (:gdef:" + sym[3] + ")\n"
            elif sym[4] == "t":
                matching_data += "\t\t* (t." + sym[3] + ")\n"
            else:
                matching_data += "\t\t* (i." + sym[3] + ")\n"
            matching_data += "\t}\n"
            matching_data += "}\n"
    for sym in data_syms:
        const_data += sym[1] + " " + "0x{:08x}\n".format(sym[0])
        const_data += "{\n"
        const_data += "\t" + sym[1] + " " + "0x{:08x}\n".format(sym[0])
        const_data += "\t{\n"
        const_data += "\t\t* (" + sym[1] + ")\n"
        const_data += "\t}\n"
        const_data += "}\n"

    with open(Path(getProjDir()) / "data" / "linker.ld", 'r') as template:
        with open(Path(getBuildPath()) / "linker.ld", 'w') as out:
            out.write(template.read().replace("$$$", matching_data).replace("&&&", const_data))
            
def main():
    genLDScript()

if __name__ == '__main__':
    main()