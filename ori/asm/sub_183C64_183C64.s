PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R2
LDR             R1, [R0]
LDR             R0, [R3,#8]
ADD             R5, R3, #8
LDR             R2, [R4,#4]
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
MOV             R1, R7
MOV             R0, R4
BLX             R12
LDR             R1, [R4]
MOV             R6, R0
LDR             R0, [R5,#4]
LDR             R2, [R4,#4]
LDR             R12, [R1,#0x9C]
MOV             R1, R7
SXTB            R3, R0
MOV             R0, R4
BLX             R12
MOV             R1, R0
LDR             R0, [R6]
LDR             R2, [R0,#0x1DC]
MOV             R0, R6
BLX             R2
MOV             R0, #0
POP             {R4-R8,PC}
