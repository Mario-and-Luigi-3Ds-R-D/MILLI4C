PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_203CFC
BL              sub_2FF5D4
STR             R5, [R4,#4]
STRH            R5, [R4]
MOV             R0, R4
STRH            R5, [R4,#2]
POP             {R4-R6,PC}
