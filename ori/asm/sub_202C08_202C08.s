LDR             R1, [R0]
VLDR            S3, [R0,#0x14]
ADD             R1, R1, #0x570
ADD             R2, R1, #0xC
VLDR            S6, [R1]
VLDR            S5, [R1,#4]
VLDR            S4, [R1,#8]
VLDR            S9, [R1]
VLDR            S8, [R1,#4]
VLDR            S7, [R1,#8]
VLDM            R2, {S0-S2}
VSUB.F32        S6, S6, S0
VSUB.F32        S5, S5, S1
VSUB.F32        S4, S4, S2
VMLA.F32        S0, S3, S6
VMLA.F32        S1, S3, S5
VMLA.F32        S2, S3, S4
VLDR            S3, [R1,#0xC]
ADD             R1, R1, #0x10
VLDR            S6, [R0,#0x18]
VSUB.F32        S9, S9, S3
VLDM            R1, {S4-S5}
ADD             R1, R0, #0x1C
VSUB.F32        S8, S8, S4
VSUB.F32        S7, S7, S5
VMLA.F32        S3, S6, S9
VMLA.F32        S4, S6, S8
VMLA.F32        S5, S6, S7
VSTM            R1, {S0-S5}
LDR             R1, [R0]
VLDR            S0, [R0,#0x14]
ADD             R1, R1, #0x400
ADD             R1, R1, #0x188
VLDR            S2, [R1,#0x14]
VLDR            S5, [R1,#8]
VLDR            S6, [R1,#0xC]
VLDR            S4, [R1,#0x10]
VLDR            S1, [R1]
VLDR            S3, [R1,#4]
VSUB.F32        S2, S2, S5
VSUB.F32        S6, S6, S1
VSUB.F32        S4, S4, S3
VLDR            S8, [R1,#0x10]
VLDR            S7, [R1,#0x14]
VLDR            S9, [R1,#0xC]
VMLA.F32        S5, S0, S2
VMLA.F32        S1, S0, S6
VMLA.F32        S3, S0, S4
VLDR            S2, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S6, [R1]
VSUB.F32        S8, S8, S2
VSUB.F32        S7, S7, S0
VSUB.F32        S9, S9, S6
VLDR            S4, [R0,#0x18]
ADD             R0, R0, #0x34 ; '4'
VSTR            S1, [R0]
VSTR            S3, [R0,#4]
VMLA.F32        S2, S4, S8
VMLA.F32        S0, S4, S7
VMLA.F32        S6, S4, S9
VSTR            S2, [R0,#0x10]
VSTR            S0, [R0,#0x14]
ADD             R0, R0, #8
VSTM            R0, {S5-S6}
BX              LR
