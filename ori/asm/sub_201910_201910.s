PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_201930
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
MOV             R0, R4
POP             {R4,PC}
