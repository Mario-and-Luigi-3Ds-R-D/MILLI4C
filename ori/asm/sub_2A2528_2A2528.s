PUSH            {R4-R7,LR}
SUB             SP, SP, #0x3C
MOV             R5, R0
MOV             R4, R1
MOV             R0, #0x300
MOV             R7, R2
MOV             R6, R3
STR             R0, [SP,#0x50+var_50]
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x50+var_48
MOV             R0, R4
BL              sub_5C4A88
MOV             R2, R6
ADD             R1, SP, #0x50+var_48
MOV             R0, R5
BL              sub_1169FC
LDRB            R0, [R4,#0xF8]
MOV             R1, R5
MOV             R2, R7
CMP             R0, #0
MOVNE           R3, #2
MOVEQ           R3, #0
MOV             R0, R1
BL              sub_14C73C
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R7,PC}
