MOV             R1, #0
STR             R1, [R0]
STR             R1, [R0,#4]
VLDR            S0, =0.0
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
BX              LR
