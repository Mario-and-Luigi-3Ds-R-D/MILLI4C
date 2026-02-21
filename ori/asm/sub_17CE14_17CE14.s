PUSH            {R4,LR}
LDR             R1, [R3,#0x10]
VLDR            S1, =0.5
ADD             R12, R3, #0x68 ; 'h'
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
LDR             R1, =off_6D1648
ADD             R0, R3, #8
VCVT.F32.U32    S0, S0
LDR             R3, [R1]
LDR             R1, [R0]
LDR             R0, [R3,#0x9C]
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R2, S0
VLDR            S0, [R12,#4]
BL              sub_3214B4
MOV             R0, #0
POP             {R4,PC}
