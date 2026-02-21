MOV             R2, #0
STR             R1, [R0,#4]
STR             R2, [R0]
LDR             R2, [R1]
VLDR            S0, =32000.0
TST             R2, #2
BEQ             loc_1E2C30
LDRD            R2, R3, [R1,#0xC]
STRD            R2, R3, [R0,#8]
LDR             R3, [R1,#8]
LDR             R2, [R1,#0xC]
TST             R3, #0x800
BEQ             loc_1E2C50
STR             R2, [R0,#0x10]
VSTR            S0, [R0,#0x14]
MOV             R1, #0x20 ; ' '
STR             R1, [R0]
B               loc_1E2B80
LDR             R2, [R1,#0xC]
VLDR            S1, =-32000.0
STR             R2, [R0,#8]
VSTR            S1, [R0,#0xC]
LDR             R3, [R1,#8]
LDR             R2, [R1,#0xC]
TST             R3, #0x800
BNE             loc_1E2C1C
VLDR            S0, [R1,#0x14]
B               loc_1E2C1C
