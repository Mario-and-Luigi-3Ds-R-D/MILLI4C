from dataclasses import dataclass
from sys import argv
import re

from Bin.splitCmn import AsmFunction, ArchType, FUNC_START_DIRECTIVES, Symbol

@dataclass
class Ctx:
    disasm: list[str]
    disasm_functions: dict[str, AsmFunction]
    
    symbols: dict[str, Symbol]
    symbol_offsets: dict[int, Symbol]

def parse_split_file(symbol_sigs: list[str]) -> (list[Symbol], set[str]):
    out_symbols = []
    out_exports = set()
    
    for line in symbol_sigs:
        line = line.strip()
        if not line or line.startswith(';'):
            continue
        
        if line.startswith('#export'):
            out_exports.add(line[len('#export') + 1:])
        else:
            out_symbols.append(Symbol.from_symbol_sig(line))
    
    return out_symbols, out_exports

def parse_index(raw_disasm_functions: list[str]) -> (dict[str, AsmFunction]):
    functions = {}
    
    for line in raw_disasm_functions[1:]:
        func = AsmFunction.from_csv_line(line.rstrip())
        functions[func.symbol_name] = func
    
    return functions

def parse_split_functions(symbols: map[str, Symbol], disasm_functions: dict[str, AsmFunction]) -> list[(AsmFunction, Symbol)]:
    functions = []
    
    for name, symbol in symbols.items():
        if name in disasm_functions:
            functions.append((disasm_functions[name], symbol))
        elif (mangled_name := symbol.mangle()) in disasm_functions:
            functions.append((disasm_functions[mangled_name], symbol))
        else:
            print(f"WARNING: {symbol.signature!r} ({symbol.mangle()}) not in disasm.s")
            continue
    
    return functions

def get_defined_symbols(
    split_functions: list[(AsmFunction, Symbol)], manual_exports: set[str], disasm: list[str],
) -> set[str]:
    defined_symbols: set[str] = set()
    
    for func, symbol in split_functions:
        for line in disasm[func.starting_line + 1:]:
            start_directive = next((directive for directive in FUNC_START_DIRECTIVES if line.startswith(directive)), None)
            if start_directive is not None:
                break
            
            if ':' not in line:
                continue
            
            symbol_name = line[:line.index(':')].strip()
            defined_symbols.add(symbol_name)
            
            if symbol_name in manual_exports:
                func.manual_exports.append(symbol_name)
    
    return defined_symbols

def get_extern_symbols(
    defined_symbols: set[str], symbols: map[str, Symbol],
    split_functions: list[(AsmFunction, Symbol)], disasm: list[str],
) -> set[str]:
    extern_symbols = set()
    
    for func, symbol in split_functions:
        for line in disasm[func.starting_line + 1:]:
            start_directive = next((directive for directive in FUNC_START_DIRECTIVES if line.startswith(directive)), None)
            if start_directive is not None:
                break
            
            extern_symbol = get_referenced_symbol(line.rstrip())
            
            is_really_extern = (
                extern_symbol is not None
                and not extern_symbol.startswith('#')
                and symbols.get(extern_symbol, None) is None
                and extern_symbol not in defined_symbols
                and extern_symbol not in ('pc', 'lr')
                and not extern_symbol.startswith('r')
            )
            
            if is_really_extern:
                extern_symbols.add(extern_symbol)
    
    return extern_symbols

def get_referenced_symbol(line: str) -> str | None:
    [result] = re.findall(r"^(?:\t|[_\w]+:\s*)((?:bl|b|blx|blh)(?:eq|ne|ge|s|mi|lo|hs)?|\.4byte)\s+(#?[\w\(\)\*,\s]+)$", line.rstrip()) or [None]
    if result is None:
        return None
    
    instruction, symbol = result
    if symbol.startswith('0x'):
        return None
    else:
        return symbol

def get_function_asm(ctx: Ctx, i: int, func: AsmFunction, symbol: Symbol) -> str:
    result = ""
    
    if func.word_aligned:
        prefix = 'i' if i is None else f"j{i:02}"
        result += f"\tAREA |{prefix}.{symbol.mangle()}|, CODE, READONLY\n"
    
    result += f"\tGLOBAL {symbol.mangle()}\n"
    for exported_symbol_name in func.manual_exports:
        result += f"\tGLOBAL {exported_symbol_name}\n"
    
    if symbol.name in ctx.disasm_functions:
        starting_line = ctx.disasm_functions[symbol.name].starting_line
        arch_type = ctx.disasm_functions[symbol.name].arch_type
    else:
        starting_line = ctx.disasm_functions[symbol.mangle()].starting_line
        arch_type = ctx.disasm_functions[symbol.mangle()].arch_type
    
    match arch_type:
        case ArchType.ARM:
            result += f"\tARM\n\n"
        case ArchType.Thumb:
            result += f"\tTHUMB\n\n"
    
    for i, line in enumerate(ctx.disasm[starting_line + 1:]):
        start_directive = next((
            directive for directive in FUNC_START_DIRECTIVES if line.startswith(directive)
        ), None)
        if start_directive is not None:
            break
        
        # Check for label and convert them into armasm syntax
        if line.startswith(symbol.name + ':'):
            line = symbol.mangle() + line[len(symbol.name) + 2:]
        elif ':' in line:
            colon_idx = line.index(':')
            line = line[:colon_idx] + line[colon_idx + 1:]
        
        # Remove @ and everything after it
        if '@' in line:
            at_sign_idx = line.index('@')
            line = line[:at_sign_idx] + '\n'
        
        # Replace unmangled input symbols with mangled ones
        if external_symbol_name := get_referenced_symbol(line):
            external_symbol = ctx.symbols.get(external_symbol_name, None)
            
            if external_symbol_name.startswith('#'):
                # Special case: armasm does not accept 'blx #...', the # has to be removed
                external_symbol_name = external_symbol_name[1:]
                try:
                    if external_symbol_name.startswith('0x'):
                        as_int = int(external_symbol_name[2:], 16)
                    else:
                        as_int = int(external_symbol_name)
                    
                    # If it did not error, that means it is an int
                    external_symbol = ctx.symbol_offsets.get(as_int, None)
                    if external_symbol is not None:
                        line = line.replace('#' + external_symbol_name, external_symbol.mangle())
                    else:
                        line = line.replace('#' + external_symbol_name, external_symbol_name)
                except ValueError:
                    pass
            elif external_symbol:
                line = line.replace(external_symbol_name, external_symbol.mangle())
            elif '(' in external_symbol_name or ')' in external_symbol_name or '*' in external_symbol_name:
                line = line.replace(external_symbol_name, f"|{external_symbol_name}|")
        
        # Convert direct byte insert directives into correct syntax
        line = line.replace('.byte', 'dcb')
        line = line.replace('.4byte', 'dcd')
        # TODO: .word most likely refers to a misinterpreted blx
        line = line.replace('.word', 'dcd')
        
        # Convert align directive
        line = line.replace('.align', 'align')
        
        result += line
    
    return result

def main():
    """
    Takes in a list of symbol/function names that are part of a given translation unit
    and splits them out from asm/disasm.s into its own armasm-comptatible .s file
    so it can be assembled by armasm.
    """
    
    if len(argv) <= 1:
        print("Usage: python gen_armasm_target.py <output.s> <list of symbols.txt>")
        return
    
    output_file_path = argv[1]
    symbols_path = argv[2]
    
    with open(symbols_path, 'r') as f:
        symbol_sigs = f.readlines()
    
    symbols, manual_exports = parse_split_file(symbol_sigs)
    
    symbol_offsets = {symbol.raw_offset: symbol for symbol in symbols if symbol.raw_offset is not None}
    symbols = {symbol.name: symbol for symbol in symbols}
    
    with open('build/functions.csv', 'r') as f:
        functions_csv = f.readlines()
    
    # Global disasm.s
    with open('asm/disasm.s', 'r') as f:
        disasm = f.readlines()
    
    disasm_functions = parse_index(functions_csv)
    split_functions = parse_split_functions(symbols, disasm_functions)
    
    result = ""
    
    # Find all symbols
    defined_symbols = get_defined_symbols(split_functions, manual_exports, disasm)
    extern_symbols = get_extern_symbols(defined_symbols, symbols, split_functions, disasm)
    
    # Start generating content
    for extern_symbol in extern_symbols:
        result += f"\tEXTERN {extern_symbol}\n"
    
    result += "\n\tREQUIRE8\n\tPRESERVE8\n\n"
    
    # Handle sorting of symbols
    sorted_syms = [symbol for name, symbol in symbols.items() if name in disasm_functions or symbol.mangle() in disasm_functions]
    sorted_syms.sort(key=lambda sym: sym.mangle())
    
    # Main symbol content
    ctx = Ctx(disasm, disasm_functions, symbols, symbol_offsets)
    
    is_sorted = True
    i = 0
    for func, symbol in split_functions:
        if is_sorted:
            is_sorted = symbol == sorted_syms[i]
        
        index = None if is_sorted else i
        
        result += get_function_asm(ctx, index, func, symbol)
        i += 1
    
    result += "\tEND\n\n"
    
    with open(output_file_path, 'w') as f:
        f.write(result)

if __name__ == '__main__':
    main()
