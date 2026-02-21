# Imports vtables from IDA and labels them.
#@author LuigiFan27
#@category Import


from ghidra.app.script import GhidraScript
from ghidra.program.model.symbol import SourceType
import re

VTABLE_RE = re.compile(r"([0-9A-Fa-f]+)\s+`vtable for'(.+)")
OFFSET_FIX = 8


# Ask user for file
map_file = askFile("Select IDA vtable MAP", "Open").getAbsolutePath()

symtab = currentProgram.getSymbolTable()

def get_or_create_namespace(name, parent):
    ns = symtab.getNamespace(name, parent)
    if ns is None:
        ns = symtab.createNameSpace(parent, name, SourceType.USER_DEFINED)
    return ns

def get_or_create_class(name, parent):
    ns = symtab.getNamespace(name, parent)
    if ns is None:
        ns = symtab.createClass(parent, name, SourceType.USER_DEFINED)
    return ns


with open(map_file, "r") as f:
    for line in f:
        m = VTABLE_RE.search(line)
        if not m:
            continue

        addr_int = int(m.group(1), 16) + OFFSET_FIX
        raw_name = m.group(2).strip()
        parts = raw_name.split("::")

        class_name = parts[-1]
        namespaces = parts[:-1]

        parent_ns = currentProgram.getGlobalNamespace()
        for ns_name in namespaces:
            parent_ns = get_or_create_namespace(ns_name, parent_ns)

        class_ns = get_or_create_class(class_name, parent_ns)

        symtab.createLabel(toAddr(addr_int), "vtable", class_ns, SourceType.USER_DEFINED)
        print("Imported", raw_name)
