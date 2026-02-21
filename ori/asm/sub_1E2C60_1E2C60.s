MOV             R2, #0
STR             R1, [R0,#4]
STR             R2, [R0]
LDR             R2, [R1]
VLDR            S0, =32000.0
TST             R2, #2
LDR             R2, [R1,#8]
AND             R3, R2, #0x800
LDR             R2, [R1,#0x2C]
BEQ             loc_1E2CAC
CMP             R3, #0
VLDREQ          S0, [R1,#0x34]
STR             R2, [R0,#8]
VSTR            S0, [R0,#0xC]
LDR             R2, [R1,#0x30]
LDR             R1, [R1,#0x2C]
STR             R1, [R0,#0x10]
STR             R2, [R0,#0x14]
B               loc_1E2CCC
CMP             R3, #0
VLDREQ          S0, [R1,#0x34]
STR             R2, [R0,#8]
VSTR            S0, [R0,#0xC]
LDR             R1, [R1,#0x2C]
VLDR            S0, =-32000.0
STR             R1, [R0,#0x10]
VSTR            S0, [R0,#0x14]
MOV             R1, #8
STR             R1, [R0]
B               loc_1E2B80
