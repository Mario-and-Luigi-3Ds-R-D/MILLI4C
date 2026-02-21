PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x3EC]
CMP             R0, #0
BEQ             locret_14EDD4
NOP
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R4,#0x3EC]
POP             {R4,PC}
