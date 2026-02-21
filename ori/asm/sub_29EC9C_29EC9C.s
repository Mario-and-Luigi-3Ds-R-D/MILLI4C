PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R0, =off_6D1648
MOV             R7, R2
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
MOV             R6, R3
LDR             R0, [R0,#0xBC]
MOV             R2, R5
MOV             R1, #0
BL              sub_1F343C
MOV             R1, R0
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
STRH            R5, [R4,#0xB0]
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, R7
MOV             R0, R4
BLX             R12
CMP             R6, #0
BNE             loc_29ED20
LDR             R0, [R4,#0xA4]
LDRH            R1, [R0,#0x1A]
BIC             R1, R1, #1
STRH            R1, [R0,#0x1A]
VPOP            {D8}
POP             {R4-R8,PC}
