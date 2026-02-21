PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R2
LDR             R2, [R0]
LDR             R1, [R3,#8]
MOV             R5, R3
LDR             R12, [R2,#0x9C]
SXTB            R3, R1
LDR             R2, [R0,#4]
MOV             R1, R7
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x48]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_176158
LDR             R0, [R4,#0xA4]
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BEQ             loc_176158
MOV             R2, R5
MOV             R1, R7
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
MOV             R0, #0
POP             {R4-R8,PC}
