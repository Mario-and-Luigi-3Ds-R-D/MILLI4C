PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R7, R1
LDR             R1, [R0]
LDR             R0, [R3,#8]
MOV             R6, R2
MOV             R4, R3
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
LDR             R2, [R5,#4]
MOV             R1, R6
MOV             R0, R5
BLX             R12
MOV             R1, R0
LDR             R2, [R4,#0xC]
MOV             R0, R5
BL              sub_17A52C
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R7
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
