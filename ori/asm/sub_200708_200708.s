PUSH            {R4,LR}
BL              sub_1F3E48
LDR             R1, =off_6B27EC
MOV             R2, #0
VLDR            S0, =0.0
STR             R1, [R0]
STRH            R2, [R0,#0xB8]
STRH            R2, [R0,#0xBA]
VSTR            S0, [R0,#0xBC]
VSTR            S0, [R0,#0xC0]
VSTR            S0, [R0,#0xC4]
VSTR            S0, [R0,#0xC8]
VSTR            S0, [R0,#0xCC]
VSTR            S0, [R0,#0xD0]
VSTR            S0, [R0,#0xD4]
STR             R2, [R0,#0xE0]!
ADD             R0, R0, #4
LDR             R1, =unk_68BC58
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
VSTR            S0, [R0,#8]
SUB             R0, R0, #0xE4
ADD             R4, R0, #0xFC
VSTR            S0, [R0,#0xF0]
VSTR            S0, [R0,#0xF4]
VSTR            S0, [R0,#0xF8]
MOV             R3, #0x11
VLDM            R1, {S0-S1}
ADD             R1, R0, #0x100
VSTM            R4, {S0-S1}
STR             R2, [R0,#0x104]
STRH            R3, [R1,#8]
STR             R2, [R0,#0x10C]
STR             R2, [R0,#0x118]
MOV             R3, #0x13
MOV             R2, #0x14
STRH            R3, [R1,#0x1C]
STRH            R2, [R1,#0x1E]
MOV             R1, #0xC0
STR             R1, [R0,#0x120]
POP             {R4,PC}
