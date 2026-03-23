import re
import subprocess
import shutil
from functools import lru_cache
 
_DEMANGLE_TOOL: str | None = None
 
 
def _find_demangle_tool() -> str | None:
    for candidate in ("c++filt", "llvm-cxxfilt", "arm-none-eabi-c++filt"):
        if shutil.which(candidate):
            return candidate
    return None
 
# Call tool 2 mangle or som shit idk what i wrote

def demangle_external(mangled: str) -> str | None:
    global _DEMANGLE_TOOL
    if _DEMANGLE_TOOL is None:
        _DEMANGLE_TOOL = _find_demangle_tool() or ""
 
    if not _DEMANGLE_TOOL:
        return None
 
    try:
        result = subprocess.run(
            [_DEMANGLE_TOOL, "--", mangled],
            capture_output=True, text=True, timeout=5
        )
        out = result.stdout.strip()

        if out and out != mangled:
            return out
    except (subprocess.TimeoutExpired, FileNotFoundError, OSError):
        pass
    return None
 

_BUILTIN_TYPES = {
    "v": "void",    "b": "bool",    "c": "char",    "a": "signed char",
    "h": "unsigned char",           "s": "short",   "t": "unsigned short",
    "i": "int",     "j": "unsigned int",             "l": "long",
    "m": "unsigned long",           "x": "long long","y": "unsigned long long",
    "f": "float",   "d": "double",  "e": "long double",
    "z": "...",     "n": "__int128", "o": "unsigned __int128",
}
 
# Standard substitutions
_STD_SUBST = {
    "St": "std::",  "Sa": "std::allocator",
    "Sb": "std::basic_string", "Ss": "std::string",
    "Si": "std::istream",      "So": "std::ostream",
    "Sd": "std::iostream",
}
 
 
class _DemanglerState:
    def __init__(self, s: str):
        self.s   = s
        self.pos = 0
        self.subs: list[str] = []
 
    def peek(self) -> str:
        return self.s[self.pos] if self.pos < len(self.s) else ""
 
    def consume(self, n: int = 1) -> str:
        out = self.s[self.pos : self.pos + n]
        self.pos += n
        return out
 
    def rest(self) -> str:
        return self.s[self.pos:]
 
    def at_end(self) -> bool:
        return self.pos >= len(self.s)
 
 
def _read_length_prefixed(st: _DemanglerState) -> str:
    digits = ""
    while st.peek().isdigit():
        digits += st.consume()
    if not digits:
        return ""
    n = int(digits)
    return st.consume(n)
 
 
def _demangle_itanium(st: _DemanglerState) -> str:
    if not st.rest().startswith("_Z"):
        return st.s  # not mangled
    st.pos = 2  # skip _Z
 
    if st.peek() == "N":
        st.consume()  # N
        parts = []
        while not st.at_end() and st.peek() != "E":
            if st.peek() == "K":
                parts.append("const"); st.consume(); continue
            if st.peek() == "V":
                parts.append("volatile"); st.consume(); continue
            if st.peek() == "S":
                st.consume()
                key = st.consume()
                parts.append(_STD_SUBST.get("S" + key, "S" + key))
                continue
            part = _read_length_prefixed(st)
            if part:
                parts.append(part)
            else:
                break
        if st.peek() == "E":
            st.consume()
        name = "::".join(p for p in parts if p not in ("const", "volatile"))
        quals = " ".join(p for p in parts if p in ("const", "volatile"))
        if quals:
            name += " " + quals
        return name + _demangle_args(st)
 
    # Simple top-level name
    name = _read_length_prefixed(st)
    if name:
        return name + _demangle_args(st)
 
    # Operator
    if st.rest().startswith("op"):
        return "<operator>"
 
    return st.s  # give up
 

# Args 4  demangler

def _demangle_args(st: _DemanglerState) -> str:
    if st.at_end():
        return "()"
    args = []
    while not st.at_end():
        c = st.peek()
        if c in _BUILTIN_TYPES:
            args.append(_BUILTIN_TYPES[c]); st.consume()
        elif c == "P":
            st.consume(); inner = _demangle_one_type(st)
            args.append(inner + "*")
        elif c == "R":
            st.consume(); inner = _demangle_one_type(st)
            args.append(inner + "&")
        elif c == "K":
            st.consume(); inner = _demangle_one_type(st)
            args.append("const " + inner)
        elif c.isdigit():
            args.append(_read_length_prefixed(st))
        else:
            st.consume(); args.append("?")
    if not args:
        return "(void)"
    return "(" + ", ".join(args) + ")"
 
 
def _demangle_one_type(st: _DemanglerState) -> str:
    c = st.peek()
    if c in _BUILTIN_TYPES:
        st.consume(); return _BUILTIN_TYPES[c]
    if c.isdigit():
        return _read_length_prefixed(st)
    st.consume(); return c
 
# DEMANGLE SYM NAME
 
@lru_cache(maxsize=4096)
def demangle(mangled: str) -> str:
    if not mangled or not mangled.startswith("_"):
        return mangled
 
    result = demangle_external(mangled)
    if result:
        return result
 
    # fallback for _Z symbols
    if mangled.startswith("_Z"):
        try:
            st = _DemanglerState(mangled)
            return _demangle_itanium(st)
        except Exception:
            pass
 
    clean = mangled.strip("_")
    return clean if clean else mangled
 
# "Special" symbols. 

def is_special_cro_symbol(name: str) -> bool:
    _RESERVED = {
        "nnroControlObject_",
        "nnroAeabiAtexit_",
        "__aeabi_atexit",
        "OnLoad", # recheck this
        "OnExit", # recheck this
        "OnUnresolved", # recheck rthis
        "nnroEitNode_",
    }
    return name in _RESERVED or name.lstrip("_") in _RESERVED
 
# Demangle names

def demangle_batch(names: list[str]) -> dict[str, str]:
    return {n: demangle(n) for n in names}