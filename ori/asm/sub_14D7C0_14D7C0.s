PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x3F0]
MOV             R5, R1
CMP             R0, #0
BEQ             loc_14D7EC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x3F0]
STR             R5, [R4,#0x3F0]
POP             {R4-R6,PC}
