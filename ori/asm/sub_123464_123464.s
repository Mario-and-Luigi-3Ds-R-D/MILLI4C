PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
BL              sub_1233A8
ADD             R12, SP, #0x20+var_1C
MOV             R3, R7
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
STR             R12, [SP,#0x20+var_20]
BL              sub_12A3D8
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
BL              sub_123520
LDRSB           R0, [SP,#0x20+var_1C]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
