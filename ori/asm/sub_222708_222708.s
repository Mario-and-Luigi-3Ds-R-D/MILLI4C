PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R0, #0
VPUSH           {D8}
STRB            R0, [R5,#8]
LDR             R0, [R5,#4]
VLDR            S16, =20.0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x308
LDR             R4, [R0,#0xF0]
B               loc_22274C
LDR             R0, [R4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
BLX             R1
ADD             R4, R4, #0xC
LDR             R0, [R5,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x308
LDR             R0, [R0,#0xF4]
CMP             R0, R4
BNE             loc_222734
VPOP            {D8}
POP             {R4-R6,PC}
