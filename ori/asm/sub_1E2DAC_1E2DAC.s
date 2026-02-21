MOV             R2, #0
STR             R1, [R0,#4]
STR             R2, [R0]
LDR             R2, [R1,#0x2C]
LDR             R3, [R1,#0x34]
VLDR            S0, =32000.0
STRD            R2, R3, [R0,#8]
LDR             R1, [R1,#0x2C]
MOV             R2, #0x20 ; ' '
STR             R1, [R0,#0x10]
VSTR            S0, [R0,#0x14]
STR             R2, [R0]
B               loc_1E2B80
