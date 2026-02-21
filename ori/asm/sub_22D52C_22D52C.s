VLDR            S3, [R0,#0x124]
VADD.F32        S4, S3, S0
VSTR            S4, [R0,#0x124]
VLDR            S3, [R0,#0x128]
VADD.F32        S5, S3, S1
VSTR            S5, [R0,#0x128]
VLDR            S3, [R0,#0x12C]
VADD.F32        S2, S3, S2
VNEG.F32        S3, S1
VNEG.F32        S1, S5
VSTR            S2, [R0,#0x12C]
LDR             R1, [R0]
VMOV.F32        S2, S0
VMOV.F32        S0, S4
LDR             R1, [R1,#0x5C]
BX              R1
