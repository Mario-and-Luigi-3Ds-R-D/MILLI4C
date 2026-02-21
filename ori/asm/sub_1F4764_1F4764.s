PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R2
MOV             R6, R3
STR             R1, [R0,#4]
STR             R5, [R4,#8]
STRB            R6, [R4,#0xC]
POP             {R4-R6,PC}
