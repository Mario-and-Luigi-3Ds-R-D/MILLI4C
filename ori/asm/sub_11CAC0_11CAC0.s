PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_11CAF0
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
CMP             R0, #0
BNE             loc_11CAD4
POP             {R4,PC}
