PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_2A8414
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4]
MOV             R0, R4
POP             {R4,PC}
