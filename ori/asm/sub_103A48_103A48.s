PUSH            {R0-R6,LR}
LSRS            R2, R1, #3
SUB             SP, SP, #8
MOVS            R6, R0
LSRS            R0, R1, #1
ADDS            R0, R0, R1
MOVS            R5, R3
ADDS            R4, R0, R2
ADDS            R1, #0x20 ; ' '
CMP             R1, R4
BLS             loc_103A60
MOVS            R4, R1
ADD             R1, SP, #0x28+var_18
MOV             R0, SP
STR             R4, [SP,#0x28+var_28]
BL              sub_302790
LDR             R1, [R0]
MOVS            R2, R5
MOVS            R0, R6
BL              sub_30279C
ADDS            R0, #0xC
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
