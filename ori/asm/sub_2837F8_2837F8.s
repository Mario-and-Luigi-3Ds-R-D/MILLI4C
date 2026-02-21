PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x468]
LDR             R0, [R0,#0xC]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R7, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x30206
MOV             R3, #0
LDR             R12, [R7]
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
LDR             R5, [R4,#0x468]
MOV             R6, #0
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_283854
BL              sub_533330
STR             R6, [R5,#4]
MOV             R0, #6
STRB            R6, [R4,#0x415]
STRB            R0, [R4,#0x3F4]
LDR             R0, [R7]
LDR             R1, =0x1AA
MOV             R3, #1
ADD             R2, R4, #0x24 ; '$'
STR             R6, [SP,#0x20+var_20]
BL              sub_52AEA8
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x20+var_1C
REV             R0, R0
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R4,#0x464]
VLDR            S0, [R0,#0x4C]
ADD             R0, R4, #0x32C
BL              sub_4E665C
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
