PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R4, R0
STR             R5, [R0]
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_29ADA0
SUB             R0, R0, #8
BL              sub_2FF5D4
STR             R5, [R4,#4]
MOV             R0, R4
POP             {R4-R6,PC}
