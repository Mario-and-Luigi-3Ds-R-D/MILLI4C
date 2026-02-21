PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
MOV             R4, R3
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R4,#0x14]
VLDR            S1, =0.5
VLDR            S2, [R4,#0xC]
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
LDR             R2, [R0]
VCVT.F32.U32    S0, S0
LDR             R2, [R2,#0x21C]
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R1, S0
VLDR            S0, [R4,#0x10]
VCVT.F32.S32    S1, S0
VCVT.F32.S32    S0, S2
UXTH            R1, R1
BLX             R2
MOV             R0, #0
POP             {R4,PC}
