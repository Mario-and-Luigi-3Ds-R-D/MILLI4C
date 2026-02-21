PUSH            {R0-R7,LR}
SUB             SP, SP, #0xC
MOVS            R4, R1
MOVS            R6, R2
MOVS            R2, R3
ADDS            R4, #0x10
LDR             R7, [SP,#0x30+arg_4]
LDR             R3, [SP,#0x30+arg_0]
MOVS            R1, R6
MOVS            R0, R4
BL              sub_102E76
MOVS            R5, R0
BEQ             loc_1039F4
MOVS            R1, R6
MOVS            R0, R4
BL              sub_102E58
MOVS            R4, R0
LDR             R1, =dword_6E12B0
LDR             R2, [R4]
MOVS            R0, #1
MOV             R12, R0
LDR             R0, [R1]
LDR             R7, [R2,#0xC]
LDR             R6, =(sub_103798+1)
MOVS            R3, #0x20 ; ' '
CMP             R7, R0
BLS             loc_1039C0
LDR             R2, [R2,#8]
LSLS            R0, R0, #2
ADDS            R0, R2, R0
LDR             R0, [R0]
B               loc_1039C2
MOVS            R0, #0
CMP             R0, #0
BNE             loc_1039D0
MOVS            R0, R4
MOV             R2, R12
STR             R6, [SP,#0x30+var_30]
BL              sub_102F70
LDR             R4, [SP,#0x30+var_24]
ADD             R0, SP, #0x30+var_28
NOP
NOP
MOVS            R2, R0
MOVS            R1, R5
ADD             R0, SP, #0x30+var_2C
BL              sub_301578
MOVS            R1, R0
MOVS            R0, R4
BL              sub_3015B0
ADD             R0, SP, #0x30+var_2C
BL              sub_3015EC
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
LDR             R0, [SP,#0x30+var_24]
MOVS            R1, R7
BL              sub_3015B0
B               loc_1039F0
