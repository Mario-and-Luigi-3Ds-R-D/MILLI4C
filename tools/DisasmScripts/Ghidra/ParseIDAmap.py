# Imports a .map from IDA into Ghidra. Remove vtables for Parsevtable
# -*- coding: utf-8 -*-
#@category Import
#@author LuigiFan27

from ghidra.program.model.symbol import SourceType
from ghidra.program.model.listing import FunctionManager
from ghidra.program.model.address import AddressSet

program = currentProgram
fm = program.getFunctionManager()
listing = program.getListing()
addrFactory = program.getAddressFactory()
symbolTable = program.getSymbolTable()

space = addrFactory.getAddressSpace("ram")

map_path = askFile("Select IDA Map file", "Open")

created = 0
renamed = 0
skipped = 0
failed = 0

with open(map_path.absolutePath, "r") as f:
    for line in f:
        line = line.strip()
        if not line:
            continue

        if ":" not in line or "(" not in line:
            continue

        try:
            addr_part, rest = line.split(None, 1)
            _, off = addr_part.split(":")
            addr = int(off, 16) & ~1

            entry = space.getAddress(addr)
            if entry is None:
                continue

            if not listing.getInstructionAt(entry):
                disassemble(entry)

            if not listing.getInstructionAt(entry):
                failed += 1
                continue

            name = rest.split("(", 1)[0].strip()

            func = fm.getFunctionAt(entry)
            if func:
                if func.getName() != name:
                    func.setName(name, SourceType.IMPORTED)
                    renamed += 1
                else:
                    skipped += 1
                continue

            func = fm.getFunctionContaining(entry)
            if func:
                if func.getName() != name:
                    func.setName(name, SourceType.IMPORTED)
                    renamed += 1
                else:
                    skipped += 1
                continue

            body = AddressSet(entry, entry)
            func = fm.createFunction(name, entry, body, SourceType.IMPORTED)
            if func:
                created += 1

        except Exception as e:
            print("FAIL:", line, e)
            failed += 1

#print user info
print("Functions created:", created)
print("Functions renamed:", renamed)
print("Functions skipped:", skipped)
print("Functions failed:", failed)