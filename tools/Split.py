from dataclasses import dataclass
from enum import Enum
from pathlib import Path
from shutil import rmtree
import os
from Settings import*
from Bin.splitCmn import Symbol, FUNC_START_DIRECTIVES, AsmFunction

def read_split_file(path: Path, out: dict[str, Symbol]):
    with open(path, 'r') as f:
        lines = f.readlines()
    
    for line in lines:
        line = line.strip()
        if line:
            symbol = Symbol.from_symbol_sig(line)
            out[symbol.mangle()] = symbol

def write_split_file(split_start_offset: int, functions_in_split: list[str]):
    path = f"split/auto/split_{split_start_offset:x}.txt"
    result_text = '\n'.join(functions_in_split) + '\n'
    
    try:
        with open(path, 'r') as f:
            dirty = f.read() != result_text
    except FileNotFoundError:
        dirty = True
    
    if dirty:
        with open(path, 'w') as f:
            f.write(result_text)

def write_scatter(all_functions: list[AsmFunction]):
    result = "text 0x00100000\n{\n"
    
    for func in all_functions:
        if not func.word_aligned:
            continue
        
        result += (
            f"\ti.{func.symbol_name} {func.offset:#010x}\n"
            "\t{\n"
            f"\t\t* (*.{func.symbol_name})\n"
            "\t}\n"
        )
    
    result += """
    _Z4stubv 0x0038fe98
    {
        * (i._Z4stubv)
    }
}
"""
    
    with open('build/scatter.ld', 'w') as f:
        f.write(result)

def write_functions_csv(all_functions: list[AsmFunction]):
    result = "name,offset,starting line,architecture\n"
    
    for func in all_functions:
        result += func.to_csv_line() + '\n'
    
    with open('build/functions.csv', 'w') as f:
        f.write(result)

def main():
    split_path = Path('split')
    
    # Make sure split/auto exists
    (split_path / 'auto').mkdir(parents=True, exist_ok=True)
    
    # Read all other split .txt files
    all_user_symbols: dict[str, Symbol] = {}
    
    for dirname, dirs, files in os.walk(split_path):
        dirpath = Path(dirname)
        
        if dirname == 'split/auto':
            continue
        
        for file in files:
            read_split_file(dirpath / file, all_user_symbols)
    
    with open('asm/disasm.s', 'r') as f:
        disasm = f.readlines()
    
    disasm_iter = enumerate(disasm)
    
    functions_in_split: list[str] = []
    split_start_offset: int = None
    
    all_splits: list[int] = []
    all_functions: list[AsmFunction] = []
    
    # scan all function labels
    function_index = 0
    for line_number, line in disasm_iter:
        start_directive, arch_type, word_aligned = next((
            (directive, arch_type, word_aligned)
            for directive, (arch_type, word_aligned) in FUNC_START_DIRECTIVES.items()
            if line.startswith(directive)
        ), (None, None, None))
        if not start_directive:
            continue
        
        # `line` is now a *_func_start directive
        
        symbol_name = line[len(start_directive) + 1:].rstrip()
        symbol = Symbol.from_mangled(symbol_name)
        
        _, next_line = next(disasm_iter)
        symbol_offset_str = next_line[next_line.index('@') + 1:].strip()[2:]
        symbol_offset = int(symbol_offset_str, 16)
        
        all_functions.append(AsmFunction(symbol_name, symbol_offset, line_number, arch_type, word_aligned))
        
        # decide whether to start a new split
        if not word_aligned and symbol_name not in all_user_symbols:
            # elf sections must be word-aligned, so non-aligned functions have to be
            # in the same section as the function before it and they cannot be separated
            functions_in_split.append(symbol.signature)
            function_index += 1
            continue
        
        if function_index >= 32 and functions_in_split and split_start_offset:
            function_index -= 32
            write_split_file(split_start_offset, functions_in_split)
            
            all_splits.append(split_start_offset)
            functions_in_split = []
            split_start_offset = None
        
        if symbol_name in all_user_symbols:
            if functions_in_split and split_start_offset:
                write_split_file(split_start_offset, functions_in_split)
                
                all_splits.append(split_start_offset)
                functions_in_split = []
                split_start_offset = None
            
            function_index += 1
            continue
        
        if split_start_offset is None:
            split_start_offset = symbol_offset
        
        functions_in_split.append(symbol.signature)
        
        function_index += 1
    
    if functions_in_split and split_start_offset:
        write_split_file(split_start_offset, functions_in_split)
        
        all_splits.append(split_start_offset)
        functions_in_split = []
        split_start_offset = None
        
    # Remove old split files
    intended_files = set(f"split_{x:x}" for x in all_splits)
    
    for path in (split_path / 'auto').iterdir():
        if path.stem not in intended_files:
            print(f"Removing old split {path}")
            path.unlink()

    # Write scatter file
    write_scatter(all_functions)
    
    # Write functions.csv file
    write_functions_csv(all_functions)
    
    # Write deps.d file
    out_deps = ''.join(f"split/auto/split_{offset:x}.txt" for offset in all_splits) + ':\n'
    out_deps += '.PHONY: all_auto_splits\nall_auto_splits: '
    out_deps += ' '.join(f"build/orig/auto/split_{offset:x}.o" for offset in all_splits) + '\n'
    
    with open('build/deps.d', 'w') as f:
        f.write(out_deps)

if __name__ == '__main__':
    main()