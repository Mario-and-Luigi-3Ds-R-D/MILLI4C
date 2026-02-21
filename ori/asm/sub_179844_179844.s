PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R1, R2
LDM             R0, {R0,R2}
MOV             R4, R3
LDR             R3, [R3,#8]
LDR             R12, [R0,#0x9C]
MOV             R0, R5
SXTB            R3, R3
BLX             R12
MOV             R1, R0
LDR             R2, [R4,#0xC]
VLDR            S0, [R4,#0x70]
MOV             R0, R5
BL              sub_17C058
MOV             R0, #0
POP             {R4-R6,PC}
