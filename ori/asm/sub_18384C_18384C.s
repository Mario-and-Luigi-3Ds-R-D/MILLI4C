PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R5, R3, #8
ADD             R4, R3, #0x68 ; 'h'
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
VLDR            S0, [R4,#8]
VMOV            R1, S0
ADD             R2, R1, #0x40000000
ADDS            R2, R2, #0x800000
BEQ             loc_183894
VLDR            S1, =4.0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#8]
VLDR            S0, [R5,#4]
LDR             R1, [R0]
VLDR            S1, [R4,#8]
VCVT.F32.S32    S0, S0
VLDR            S2, =-1.0
LDR             R1, [R1,#0x218]
BLX             R1
MOV             R0, #0
POP             {R4-R6,PC}
