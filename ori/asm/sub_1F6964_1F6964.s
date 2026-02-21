PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xB0]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1F698C
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
STR             R5, [R4,#0xB0]
STR             R5, [R4,#0xB4]
POP             {R4-R6,PC}
