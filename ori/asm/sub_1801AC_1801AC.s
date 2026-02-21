PUSH            {R4,LR}
LDR             R1, [R3,#8]
LDR             R2, [R0,#4]
CMP             R1, #0
BEQ             loc_180210
ADD             R1, R2, #0x14000
VLDR            S0, =65535.0
VLDR            S1, =-65535.0
VSTR            S0, [R1,#0x2B8]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
VSTR            S1, [R1,#0x2B4]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
VSTR            S0, [R1,#0x2C0]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
VSTR            S1, [R1,#0x2BC]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
VSTR            S0, [R1,#0x2C8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14000
VSTR            S1, [R0,#0x2C4]
B               loc_180228
LDR             R0, =0x13CFC
LDR             R0, [R0,R2]
LDR             R1, [R0,#0x40]
ADD             R1, R1, R0
MOV             R0, R2
BL              sub_2B32C8
MOV             R0, #0
POP             {R4,PC}
