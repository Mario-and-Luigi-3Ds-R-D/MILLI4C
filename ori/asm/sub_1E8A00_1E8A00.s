LDRD            R2, R3, [R0,#0x3C]
CMP             R2, R3
BEQ             locret_1E8A44
SUB             R1, R3, R2
VMOV            S0, R1
VLDR            S1, =0.1
VCVT.F32.S32    S0, S0
VABS.F32        S0, S0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
CMP             R1, #0
MOVLE           R1, #1
CMP             R2, R3
SUBGT           R1, R2, R1
ADDLE           R1, R1, R2
STR             R1, [R0,#0x3C]
BX              LR
