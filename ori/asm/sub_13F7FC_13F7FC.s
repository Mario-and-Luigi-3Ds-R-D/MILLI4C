PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R0, [R0,#0x18]
VLDR            S0, =0.0
TST             R0, #1
BNE             loc_13F868
ADD             R0, R4, #0x5C ; '\'
VLDR            S0, [R0,#8]
VMOV.F32        S16, S0
ADD             R0, R4, #0x74 ; 't'
VLDR            S0, [R0,#8]
VMUL.F32        S16, S0, S16
ADD             R0, R4, #0x280
VLDR            S0, [R0,#8]
VMUL.F32        S0, S0, S16
VLDR            S1, [R4,#0x3C]
LDR             R0, [R4,#0x224]
CMP             R0, #0
VMUL.F32        S0, S1, S0
BEQ             loc_13F868
VLDR            S1, [R4,#0x238]
VLDR            S2, =0.007874
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S2
VMUL.F32        S1, S1, S0
VADD.F32        S0, S0, S1
VPOP            {D8}
POP             {R4,PC}
