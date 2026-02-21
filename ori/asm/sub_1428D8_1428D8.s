VLDM            R1!, {S0-S2}
MOV             R3, #0
STR             R2, [R0,#4]
STR             R3, [R0]
VSTR            S0, [R0,#0x10]
VSTR            S1, [R0,#0xC]
VSTR            S2, [R0,#8]
BX              LR
