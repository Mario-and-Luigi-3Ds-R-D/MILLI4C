PUSH            {R4-R6,LR}
MOVS            R4, R1
MOV             R5, R0
VPUSH           {D8}
BNE             loc_166760
LDR             R6, =off_6D1648
LDR             R0, [R6]
BL              sub_1E4614
VLDR            S16, =0.0
ADD             R0, R0, #0x2400
VSTR            S16, [R0,#0x2D4]
LDR             R0, [R6]
BL              sub_1E4604
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#0x3FC]
BLX             R1
ADD             R5, R5, #0x16C00
ADD             R5, R5, #0xD8
STRB            R4, [R5]
VPOP            {D8}
POP             {R4-R6,PC}
