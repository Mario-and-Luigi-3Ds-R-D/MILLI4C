PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_1CCBAC
BL              sub_4DF720
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R4]
MOV             R0, R4
POP             {R4,PC}
