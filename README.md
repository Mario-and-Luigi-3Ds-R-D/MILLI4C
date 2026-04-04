# MILLI4C

A work-in-progress decompilation of **Mario & Luigi: Dream Team** targeting the US 1.0 release, with plans to expand to additional versions over time.

This is currently maintained by one person, so progress will be steady but slow. Hoping to get done by 2032, lmao.

---

## Disclaimer

You must provide your own legally obtained copy of Mario & Luigi: Dream Team. Place the decompressed `code.bin` at:

```
data/<version>/code.bin
```

**Supported versions:** `US_1.0`

---

## Goals

- 1:1 matching decompilation of the US 1.0 `code.bin`
- Expand to additional regional versions over time
- CRO support is planned but not yet targeted
- RomFS building is out of scope
- A PC port is not a goal of this project, though forks are welcome once complete

---

## Building

### Requirements

- ARMCC 4.1 Build 894, you can obtain this at developer.arm
- DevkitARM
- Windows (Linux support is untested and may not work)

### Setup

Set the following environment variables:

| Variable Name (Not op) | Example Path |
|---|---|
| `ARMCC_PATH` | `C:\path\to\ARMCC\894` |
| `ARMCC41LIB` | `C:\path\to\ARMCC\894\lib` |
| `ARMCC41INC` | `C:\path\to\ARMCC\894\include\windows` |

### Building

Run `tools/Build.py`. This will produce:
- `code.bin`
- `MILLI4C.axf`
- Various object files

> Note: The `Build.py` method is temporary, borrowed from [Moddimations' SM3DL Decomp](https://github.com/Moddimation) project.

---

## CRO Creator Config

Each CRO module has the following config files under `data/RO/<ModuleName>/`:

**`imports.csv`** — Defines imported symbols. Format:
```
Symbol,Patch,NumberBy0x4,RelocType,Add0
_ZN10RealSystemC1EPK13FieldBootInfo,0,0x00,2,0
```

**`SHA256.csv`** — Overrides the SHA256 in the RO header. Format:
```
hash0,1,2,3:<sha256value>
```

**`static.crs`** — Generated from `data/Version/<VER>/static_symbols.csv`. Format:
```
SymbolMangledOrNot,index,offset
_ZN2nn2ro10InitializeEPvjS0_jb,0,0
```
Symbols are generated in order of appearance.

**VTable config** — enable_rtti = true if the user desires to enable RTTI generation.

CROs can import from a `ModuleLib` which can used by all CROs.

---

## Contributing

All contributions are appreciated — whether that's Ghidra work, decompilation, tooling, or documentation. 

Join the Discord to get involved:

**https://discord.gg/dQ4xEerM9m**

as well as 3DS Game Decompilation:

**https://discord.gg/mYq7Ebt6Hh**