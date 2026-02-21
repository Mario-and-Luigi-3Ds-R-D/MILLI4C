ADD             R2, R0, #0x10
VLDR            S2, [R1]
VLDR            S5, [R0,#0xC]
VLDR            S1, [R1,#4]
VLDR            S0, [R1,#8]
VADD.F32        S2, S2, S5
VLDM            R2, {S3-S4}
ADD             R2, R0, #0x60 ; '`'
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
VLDM            R2, {S3-S5}
VADD.F32        S2, S3, S2
VADD.F32        S1, S4, S1
VADD.F32        S0, S5, S0
VSTR            S2, [R0,#0x24]
VSTR            S1, [R0,#0x28]
VSTR            S0, [R0,#0x2C]
BX              LR
