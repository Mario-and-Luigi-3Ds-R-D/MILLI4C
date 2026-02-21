PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_22216C
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4]
POP             {R4,PC}
