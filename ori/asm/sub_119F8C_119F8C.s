NOP
PUSH            {R3-R7,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R7, R2
MOV             R4, R3
BL              sub_129DB8
MOV             R3, R7
MOV             R2, R6
MOV             R1, R5
STR             R4, [SP,#0x18+var_18]
BL              sub_12304C
POP             {R3-R7,PC}
