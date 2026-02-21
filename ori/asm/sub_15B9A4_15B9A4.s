PUSH            {R4-R8,LR}
MOV             R5, R2
MOV             R6, R1
LDR             R2, [R0]
LDR             R1, [R3,#8]
MOV             R4, R3
LDR             R12, [R2,#0x9C]
SXTB            R3, R1
LDR             R2, [R0,#4]
MOV             R1, R5
BLX             R12
MOV             R7, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
MOV             R1, R7
BL              sub_160564
VMOV            S0, R0
LDRH            R0, [R4,#2]
MOV             R2, R5
MOV             R1, R6
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
