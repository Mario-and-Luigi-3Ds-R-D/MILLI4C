PUSH            {R4-R6,LR}
MOV             R6, R2
LDR             R2, [R0]
MOV             R5, R1
LDR             R1, [R3,#8]
MOV             R4, R3
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R1
MOV             R1, R6
BLX             R12
LDR             R0, [R0,#0x164]
ANDS            R0, R0, #7
BEQ             locret_17626C
MOV             R2, R4
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
