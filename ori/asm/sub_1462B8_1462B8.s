ADD             R2, R1, #0x24 ; '$'
VLDR            S13, [R1]
VLDR            S8, [R1,#4]
VLDR            S12, [R1,#8]
VLDR            S7, [R1,#0xC]
VLDR            S6, [R1,#0x1C]
VLDR            S4, [R1,#0x20]
VLDR            S0, =0.000244
VCVT.F32.S32    S13, S13
VLDM            R2, {S2-S3}
ADD             R2, R1, #0x10
VCVT.F32.S32    S8, S8
VLDM            R2, {S9-S11}
VCVT.F32.S32    S12, S12
VCVT.F32.S32    S7, S7
VCVT.F32.S32    S6, S6
VCVT.F32.S32    S9, S9
VCVT.F32.S32    S10, S10
VCVT.F32.S32    S11, S11
VCVT.F32.S32    S4, S4
VLDR            S5, [R1,#0x2C]
VCVT.F32.S32    S14, S2
VMUL.F32        S13, S13, S0
VMUL.F32        S8, S8, S0
VMUL.F32        S12, S12, S0
VMUL.F32        S7, S7, S0
VMUL.F32        S9, S9, S0
VMUL.F32        S10, S10, S0
VMUL.F32        S11, S11, S0
VMUL.F32        S2, S6, S0
VCVT.F32.S32    S3, S3
VMUL.F32        S0, S4, S0
VCVT.F32.S32    S4, S5
VLDR            S1, =0.0625
VSTR            S13, [R0]
VSTR            S12, [R0,#0x20]
VMUL.F32        S5, S14, S1
VSTR            S7, [R0,#4]
VSTR            S10, [R0,#0x24]
VSTR            S11, [R0,#8]
VMUL.F32        S3, S3, S1
ADD             R2, R0, #0x28 ; '('
VMUL.F32        S1, S4, S1
VSTR            S5, [R0,#0xC]
VSTM            R2, {S0-S1}
ADD             R2, R0, #0x18
VSTM            R2, {S2-S3}
ADD             R2, R0, #0x10
VSTM            R2, {S8-S9}
BX              LR
