MOV             R2, #0
STR             R1, [R0,#4]
STR             R2, [R0]
LDR             R2, [R1,#0xC]
VLDR            S0, =32000.0
MOV             R3, #8
STR             R2, [R0,#8]
VSTR            S0, [R0,#0xC]
LDR             R2, [R1,#0x14]
LDR             R1, [R1,#0xC]
STR             R1, [R0,#0x10]
STR             R2, [R0,#0x14]
STR             R3, [R0]
B               loc_1E2B80
