PUSH            {R4,LR}
LDR             R1, [R0]
TST             R1, #1
BEQ             loc_1345BC
ADD             R0, R0, #4
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_1345C0
MOV             R0, #1
POP             {R4,PC}
