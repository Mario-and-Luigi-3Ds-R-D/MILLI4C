PUSH            {R4-R6,LR}
MOV             R6, #0
LDR             R4, [R0,#0xA4]
LDR             R5, =dword_6D22B0
CMP             R4, #0
BEQ             loc_1E95E0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, R5
BEQ             loc_1E95E4
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1E95CC
MOV             R4, R6
LDR             R0, [R4,#0x220]
POP             {R4-R6,PC}
