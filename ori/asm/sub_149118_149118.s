MOV             R2, #0
VLDR            S0, =0.0
STRH            R2, [R0]
STRH            R2, [R0,#2]
VSTR            S0, [R0,#4]
MOV             R3, #0xFFFFFFFF
VSTR            S0, [R0,#8]
REV             R3, R3
VSTR            S0, [R0,#0xC]
VSTR            S0, [R0,#0x10]
STR             R3, [R0,#0x14]
MOV             R3, #0xFFFFFF00
REV             R3, R3
STR             R3, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
STRB            R2, [R0,#0x20]
BX              LR
