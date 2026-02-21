PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
VLDR            S0, [R4,#0x14]
VLDR            S1, [R4,#0x10]
VLDR            S2, [R4,#0xC]
VLDR            S5, [R4,#8]
VLDR            S6, [R4,#4]
LDR             R1, [R0]
VCVT.F32.S32    S4, S0
VCVT.F32.S32    S3, S1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S5
VCVT.F32.S32    S0, S6
LDR             R1, [R1,#0x284]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
