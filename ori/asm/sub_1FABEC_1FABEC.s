ADD             R2, R0, #0x12400
LDR             R1, [R2,#0x334]
CMP             R1, #0x3F800000
BEQ             locret_1FAC48
ADD             R3, R0, #0x10000
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x338
ADD             R3, R3, #0x2700
LDR             R1, [R0]
ADD             R1, R1, #1
STR             R1, [R0]
LDR             R0, [R3]
VMOV            S0, R1
LDR             R0, [R0,#0x80]
VCVT.F32.U32    S1, S0
VMOV            S0, R0
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VLDR            S1, =1.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R2,#0x334]
BX              LR
