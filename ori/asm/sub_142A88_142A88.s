VLDM            R1!, {S0-S1}
MOV             R3, #0
STR             R2, [R0,#4]
STR             R3, [R0]
STR             R3, [R0,#8]
VSTR            S0, [R0,#0x10]
VSTR            S1, [R0,#0xC]
BX              LR
