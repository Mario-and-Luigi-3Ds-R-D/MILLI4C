PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x100]
MOV             R5, R1
MOV             R6, R2
CMP             R0, #0
BEQ             loc_14A970
LDR             R1, [R0]
LDR             R3, [R1,#0x14]
MOV             R1, R5
BLX             R3
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
NOP
