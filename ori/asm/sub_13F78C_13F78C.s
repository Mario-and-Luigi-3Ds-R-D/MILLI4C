PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
ADD             R0, R0, #0x8C
VLDR            S0, [R0,#8]
VMOV.F32        S16, S0
ADD             R0, R4, #0x298
VLDR            S0, [R0,#8]
VADD.F32        S0, S0, S16
LDR             R0, [R4,#0x228]
CMP             R0, #0
BEQ             loc_13F7D8
VLDR            S1, [R4,#0x23C]
VLDR            S3, =0.007874
VLDR            S2, =180.0
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S3
VMUL.F32        S1, S1, S2
VADD.F32        S0, S0, S1
VPOP            {D8}
POP             {R4,PC}
