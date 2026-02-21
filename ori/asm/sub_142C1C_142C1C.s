VLDR            S0, [R1]
MOV             R3, #0
STR             R3, [R0]
STR             R3, [R0,#4]
STR             R3, [R0,#8]
VSTR            S0, [R0,#0xC]
BX              LR
