PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R2
LDR             R0, =off_6D1648
MOV             R5, R3
VPUSH           {D8}
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R1, [R3,#8]
LDR             R0, [R0,#0x9C]
AND             R1, R1, #0xFF
BL              sub_3214C4
VLDR            S16, =0.0
LDR             R1, [R4,#4]
VMOV.F32        S0, S16
TST             R1, #0xFF
BEQ             loc_177414
LDRH            R0, [R5,#2]
MOV             R2, R7
MOV             R1, R6
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R8,PC}
NOP
BL              sub_5CA48C
CMP             R0, #0
VMOVEQ.F32      S0, S16
VLDRNE          S0, =1.0
B               loc_1773F8
