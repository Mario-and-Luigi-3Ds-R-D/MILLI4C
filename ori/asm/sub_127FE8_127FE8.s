PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
BL              sub_127FD4
LDR             R0, [R4,#4]
POP             {R4,LR}
NOP
