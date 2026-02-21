MOV             R1, #0
MOV             R2, #0xFFFFFFFF
STR             R1, [R0,#4]
STR             R2, [R0]
VLDR            S0, =0.0
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
STRB            R1, [R0,#0x14]
BX              LR
