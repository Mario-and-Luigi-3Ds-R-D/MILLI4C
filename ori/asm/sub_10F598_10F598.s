PUSH            {R4-R8,LR}
SUB             SP, SP, #0x18
MOV             R8, R0
LDR             R7, [SP,#0x30+arg_0]
MOV             R4, R1
MOV             R5, R2
MOV             R6, R3
BL              sub_1233A8
ADD             R1, SP, #0x30+var_20
STR             R1, [SP,#0x30+var_30]
ADD             R3, SP, #0x30+var_24
ADD             R2, SP, #0x30+var_28
ADD             R1, SP, #0x30+var_2C
MOV             R0, R8
BL              sub_11B4E8
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
BL              sub_123520
CMP             R4, #0
LDRBNE          R0, [SP,#0x30+var_2C]
STRBNE          R0, [R4]
CMP             R5, #0
LDRNE           R0, [SP,#0x30+var_28]
STRNE           R0, [R5]
CMP             R6, #0
LDRNE           R0, [SP,#0x30+var_24]
STRNE           R0, [R6]
CMP             R7, #0
LDRNE           R0, [SP,#0x30+var_20]
STRNE           R0, [R7]
ADD             SP, SP, #0x18
POP             {R4-R8,PC}
