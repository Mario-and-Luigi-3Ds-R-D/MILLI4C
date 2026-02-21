PUSH            {R4,LR}
MOV             R4, R0
BL              sub_120F40
MOV             R0, #0
STR             R0, [R4,#4]
STR             R0, [R4,#8]
POP             {R4,PC}
