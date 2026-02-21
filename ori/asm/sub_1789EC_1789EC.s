PUSH            {R4,LR}
LDR             R12, [R0]
LDR             R3, [R3,#8]
MOV             R1, R2
LDR             R2, [R0,#4]
LDR             R12, [R12,#0x9C]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x2D4]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
