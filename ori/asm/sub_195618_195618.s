VLDR            S2, [R1,#4]
VLDR            S4, [R2,#4]
VLDR            S3, [R1]
VLDR            S5, [R2]
VSUB.F32        S7, S2, S4
VLDR            S0, [R1,#8]
VLDR            S1, [R2,#8]
VLDR            S2, [R3,#4]
VSUB.F32        S3, S3, S5
VSUB.F32        S5, S0, S1
VSUB.F32        S4, S2, S4
VLDR            S6, [R3]
VLDR            S8, [R2]
VLDR            S0, [R3,#8]
ADD             R12, R0, #0x10
VSUB.F32        S6, S6, S8
VSUB.F32        S8, S0, S1
ADD             R1, R0, #0xC
VMUL.F32        S2, S4, S5
VMUL.F32        S1, S6, S7
VMUL.F32        S0, S8, S3
VMLS.F32        S2, S8, S7
VMLS.F32        S1, S4, S3
VMLS.F32        S0, S6, S5
VLDR            S4, =1.0
VSTR            S2, [R0,#0xC]
VMUL.F32        S3, S2, S2
VSTM            R12, {S0-S1}
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S5, S3
VDIV.F32        S3, S4, S5
VMUL.F32        S2, S2, S3
VMUL.F32        S4, S0, S3
VMUL.F32        S0, S1, S3
VSTR            S2, [R1]
VSTR            S4, [R1,#4]
VSTR            S0, [R1,#8]
LDM             R2, {R1,R3}
LDR             R2, [R2,#8]
VMOV            S5, R1
VMOV            S4, R3
STR             R2, [R0,#8]
STM             R0, {R1,R3}
VMOV            S2, R2
VLDR            S1, [R0,#0xC]
VLDR            S3, [R0,#0x10]
VMUL.F32        S1, S1, S5
VMLA.F32        S1, S3, S4
VMLA.F32        S1, S0, S2
VNEG.F32        S0, S1
VSTR            S0, [R0,#0x18]
BX              LR
