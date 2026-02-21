PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xA4]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_194994
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R4,#0xA4]
CMP             R0, #0
BEQ             loc_194990
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0xA4]
STR             R5, [R4,#0xA8]
POP             {R4-R6,PC}
