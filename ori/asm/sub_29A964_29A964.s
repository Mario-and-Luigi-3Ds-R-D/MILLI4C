PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R4, R0
STR             R5, [R0]
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_29A98C
SUB             R0, R0, #8
BL              sub_2FF5D4
STR             R5, [R4,#4]
POP             {R4-R6,PC}
