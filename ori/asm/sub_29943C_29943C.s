PUSH            {R3-R9,LR}
ADD             R5, R0, #0x38 ; '8'
MOV             R7, #0
LDM             R5, {R5,R6}
STRB            R7, [R0,#0x25]
CMP             R5, R6
MOVNE           R8, #1
BEQ             locret_299490
LDR             R4, [R5]
REV             R0, R7
MOV             R1, SP
STRB            R7, [R4,#0x440]
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R4,#0x2C]
VLDR            S0, [R0,#0x4C]
ADD             R0, R4, #0x3AC
BL              sub_4E665C
ADD             R5, R5, #0xC
CMP             R5, R6
STRB            R8, [R4,#5]
BNE             loc_29945C
POP             {R3-R9,PC}
