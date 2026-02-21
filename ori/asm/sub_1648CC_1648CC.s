LDRD            R2, R3, [R1]
ADD             R12, R0, #0x10000
ADD             R12, R12, #0x6B00
ADD             R1, R0, #0x16800
STRD            R2, R3, [R12,#0xC0]
VLDR            S3, [R1,#0x3CC]
VLDR            S2, [R1,#0x3D8]
VLDR            S0, [R1,#0x3E4]
VLDR            S1, [R1,#0x3C0]
ADD             R0, R0, #0x13C00
VMUL.F32        S0, S2, S0
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S1, S0
VSTR            S0, [R0,#0x48]
VLDR            S0, [R1,#0x3C4]
VLDR            S2, [R1,#0x3D0]
VLDR            S1, [R1,#0x3DC]
VLDR            S3, [R1,#0x3E8]
VMUL.F32        S0, S0, S2
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x4C]
BX              LR
