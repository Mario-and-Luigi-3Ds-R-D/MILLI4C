PUSH            {R4,LR}
LDR             R1, [R0,#0x60]
LDR             R4, [R0,#0x5C]
CMP             R4, R1
BEQ             loc_223308
SUB             R1, R1, #0xC
ADD             R12, R1, #4
LDR             R3, [R1,#8]
MOV             R2, R1
CMP             R3, R12
BNE             loc_2232F0
LDR             R3, [R2]
CMP             R3, #0
BEQ             loc_2232F0
LDR             R12, [R3,#0x20]
VLDR            S0, [R12,#4]
VSTR            S0, [R3]
STR             R3, [R12,#4]
LDR             R3, [R12,#8]
ADD             R3, R3, #1
STR             R3, [R12,#8]
LDR             R3, [R1,#4]
LDR             R2, [R1,#8]
CMP             R4, R1
STR             R2, [R3,#4]
STR             R3, [R2]
BNE             loc_2232B0
LDR             R1, [R0,#0x5C]
STR             R1, [R0,#0x60]
ADD             R0, R0, #0x5C ; '\'
SUB             R4, R0, #0x5C ; '\'
LDRB            R0, [R0,#-0x4C]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_223338
BL              sub_110D10
MOV             R1, #0
STR             R1, [R4]
MOV             R0, R4
POP             {R4,PC}
