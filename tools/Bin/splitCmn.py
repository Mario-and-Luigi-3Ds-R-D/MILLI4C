from dataclasses import dataclass, field
from enum import Enum

class ArchType(Enum):
    ARM = 0
    Thumb = 1

@dataclass
class AsmFunction:
    symbol_name: str
    offset: int
    starting_line: int
    arch_type: ArchType
    word_aligned: bool
    
    # For tracking if a function contains a symbol that was manually specified to be exported
    manual_exports: list[str] = field(default_factory=list)
    
    def to_csv_line(self) -> str:
        aligned_str = 'aligned' if self.word_aligned else 'non_aligned'
        return f"{self.symbol_name},{self.offset:x},{self.starting_line},{self.arch_type.name},{aligned_str}"
    
    def from_csv_line(line: str) -> 'AsmFunction':
        symbol_name, offset, starting_line, arch_type, word_aligned = line.split(',')
        
        offset = int(offset, base=16)
        starting_line = int(starting_line)
        arch_type = ArchType.ARM if arch_type == 'ARM' else ArchType.Thumb
        word_aligned = word_aligned != 'non_aligned'
        
        return AsmFunction(symbol_name, offset, starting_line, arch_type, word_aligned)

# second argument: whether it is word-aligned or not
FUNC_START_DIRECTIVES = {
    '\tarm_func_start': (ArchType.ARM, True),
    '\tthumb_func_start': (ArchType.Thumb, True),
    '\tnon_word_aligned_thumb_func_start': (ArchType.Thumb, False),
}

EXTERN_C_DECLARATION = "extern \"C\""

def mangle_typename_segment(name: str) -> str:
    name = name.strip()
    
    prefix = ""
    
    if name.endswith('*'):
        name = name[:-1].rstrip()
        prefix += 'P'
    
    if name.startswith('const'):
        name = name[5:].lstrip()
        prefix += 'K'
        
    match name:
        case "int":
            name = 'i'
        case "u32" | "unsigned int":
            name = 'j'
        case "bool":
            name = 'b'
        case "char":
            name = 'c'
        case "void":
            name = 'v'
        case "...":
            name = 'z'
        case _:
            prefix += str(len(name))
    
    return prefix + name

def demangle_typename_segment(name: str, is_const: bool, is_pointer: bool) -> str:
    if is_const:
        name = 'const ' + name
    if is_pointer:
        name += '*'
    return name

@dataclass
class Symbol:
    # the symbol's raw offset, only set if necessary, e.g. 0x1027cc
    raw_offset: int | None
    # e.g. isFloat(Variable*)
    signature: str
    # Whether the symbol name should be mangled
    no_mangle: bool
    namespaces: list[str]
    # Name of symbol
    name: str
    # List of data types, e.g. 'Variable*'
    args: list[str]
    
    def from_symbol_sig(symbol_sig: str) -> "Symbol":
        # Handle and remove offset prefix
        if ':' in symbol_sig and symbol_sig[symbol_sig.index(':') + 1] != ':':
            raw_offset_str = symbol_sig[:symbol_sig.index(':')]
            if raw_offset_str.startswith('0x'):
                raw_offset = int(raw_offset_str[2:], 16)
            else:
                raw_offset = int(raw_offset_str)
            
            symbol_sig = symbol_sig[symbol_sig.index(':') + 1:]
        else:
            raw_offset = None
        
        # Don't parse signature if extern "C" prefix is passed
        if symbol_sig.startswith(EXTERN_C_DECLARATION):
            symbol_sig = symbol_sig[len(EXTERN_C_DECLARATION):].strip()
            return Symbol(raw_offset, symbol_sig, True, [], symbol_sig, [])
        
        # Parse signature
        *namespaces, symbol_sig = symbol_sig.strip().split('::')
        
        if '(' in symbol_sig:
            name = symbol_sig[:symbol_sig.index('(')]
            args = symbol_sig[symbol_sig.index('(') + 1:-1].split(',')
        else:
            name = symbol_sig
            args = []
        
        return Symbol(raw_offset, symbol_sig, False, namespaces, name, args)
    
    def from_mangled(mangled: str) -> "Symbol":
        if not mangled.startswith('_Z'):
            return Symbol(None, f"extern \"C\" {mangled}", True, [], mangled, [])
        
        if mangled.startswith('_ZN'):
            has_namespaces = True
            mangled = mangled[3:]
        else:
            has_namespaces = False
            mangled = mangled[2:]
        
        mangled = iter(mangled)
        namespaces = []
        segments = []
        for c in mangled:
            if c == 'E' and has_namespaces:
                *namespaces, segment = segments
                segments = [segment]
                c = next(mangled)
            
            if c == 'P':
                is_pointer = True
                c = next(mangled)
            else:
                is_pointer = False
            
            if c == 'K':
                is_const = True
                c = next(mangled)
            else:
                is_const = False
            
            count_str = ""
            
            match c:
                case c if c.isdigit():
                    count_str = c
                case 'i':
                    segments.append(demangle_typename_segment('int', is_const, is_pointer))
                    continue
                case 'j':
                    segments.append(demangle_typename_segment('u32', is_const, is_pointer))
                    continue
                case 'b':
                    segments.append(demangle_typename_segment('bool', is_const, is_pointer))
                    continue
                case 'c':
                    segments.append(demangle_typename_segment('char', is_const, is_pointer))
                    continue
                case 'v':
                    segments.append(demangle_typename_segment('void', is_const, is_pointer))
                    continue
                case 'z':
                    segments.append('...')
                    continue
            
            try:
                while (c := next(mangled)).isdigit():
                    count_str += c
            except StopIteration:
                break
            
            count = int(count_str)
            
            segment = c
            for _ in range(count - 1):
                segment += next(mangled)
            
            segments.append(demangle_typename_segment(segment, is_const, is_pointer))
        
        name = segments.pop(0)
        
        if segments == ['void']:
            segments = ['']
        
        namespace_end = '::' if namespaces else ''
        signature = f"{'::'.join(namespaces)}{namespace_end}{name}({', '.join(segments)})"
        
        return Symbol(None, signature, False, namespaces, mangled, segments)
    
    def mangle(self) -> str:
        if self.no_mangle:
            return self.signature
        
        namespaces_mangled = ''.join(f"{len(namespace)}{namespace}" for namespace in self.namespaces)
        namespaces_ident = 'N' if self.namespaces else ''
        ident_end = 'E' if self.namespaces else ''
        
        if len(self.args) == 1 and not self.args[0]:
            sig_mangled = 'v'
        else:
            sig_mangled = ''.join(mangle_typename_segment(name) for name in self.args)
        
        return f"_Z{namespaces_ident}{namespaces_mangled}{len(self.name)}{self.name}{ident_end}{sig_mangled}"