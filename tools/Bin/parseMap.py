import csv
import sys
from Settings import *

def read_sym_file():
    with open(getFuncSymFile(), newline='') as f:
        syms = []
        reader = csv.reader(f, delimiter=',',quotechar='"')
        for row in reader:
            if not row[0].startswith("0x"):
                continue
            size = int(row[2], 16) if row[2].startswith("0x") else int(row[2])
            syms.append((int(row[0], 0), row[1], int(row[2]), row[3], row[4]))
        return syms

def get_symbol(symbol: str):
    with open(getFuncSymFile(), newline='') as f:
        reader = csv.reader(f, delimiter=',',quotechar='"')
        for row in reader:
            if not row[0].startswith("0x"):
                continue
            if row[3] == symbol:
                return (int(row[0], 0), row[1], int(row[2]), row[3], row[4])
    return None

def get_symbol_with_addr_and_size(addr: int, size: int):
    with open(getFuncSymFile(), newline='') as f:
        reader = csv.reader(f, delimiter=',',quotechar='"')
        for row in reader:
            if not row[0].startswith("0x"):
                continue
            if int(row[0],16) == addr and int(row[2]) == size:
                return (int(row[0], 0), row[1], int(row[2]), row[3], row[4])
    return None