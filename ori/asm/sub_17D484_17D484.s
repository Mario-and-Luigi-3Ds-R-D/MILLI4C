PUSH            {R4-R6,LR}
MOV             R5, R2
LDR             R2, [R0]
MOV             R6, R1
LDR             R1, [R3,#8]
MOV             R4, R3
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R1
MOV             R1, R5
BLX             R12
LDRB            R1, [R0,#0x1F4]
MOV             R2, R5
TST             R1, #1
VLDRNE          S0, [R0,#0x1FC]
LDRH            R0, [R4,#2]
VLDREQ          S0, =-1.0
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
