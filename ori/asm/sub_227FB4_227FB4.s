PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R2, #1
MOV             R0, #0
STRB            R2, [R4]
STRB            R0, [R4,#1]
LDR             R0, [R1]
LDR             R5, =off_6CDA80
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, R4, #0x11C
BLX             R2
LDR             R0, [R5]
VLDR            S0, [R4,#0x120]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
LDR             R0, [R0,#0x4A0]
VLDR            S1, [R0,#0x30]
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0xAC]
POP             {R4-R6,PC}
