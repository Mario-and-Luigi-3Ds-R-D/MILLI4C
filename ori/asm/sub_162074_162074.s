PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, [R0]
MOV             R4, R2
MOV             R2, R3
LDR             R12, [R1,#0x298]
MOV             R1, R5
BLX             R12
MOV             R5, R0
MOV             R1, R4
BL              sub_231710
MOV             R0, R5
POP             {R4-R6,PC}
