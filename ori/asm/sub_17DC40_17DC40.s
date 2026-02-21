PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
MOV             R4, R0
LDR             R0, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R4,#4]
SXTB            R3, R0
MOV             R0, R4
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
LDR             R1, [R4,#4]
ADD             R2, R1, #0x15000
LDR             R1, [R0,#0xA4]
LDR             R0, [R2,#0x20]
BL              sub_5AE6CC
MOV             R0, #0
POP             {R4,PC}
