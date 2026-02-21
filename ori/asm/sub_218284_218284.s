PUSH            {R4-R6,LR}
MOV             R5, R0
ADD             R4, R0, #0x14C
MOV             R6, R1
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [R6]
STR             R0, [R4,#4]
STR             R0, [R4]
LDR             R0, [R6]
STR             R0, [R5,#0x9C]
POP             {R4-R6,PC}
