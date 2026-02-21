VLDR            S2, [R2,#0xC]
VLDR            S5, [R2]
VLDR            S0, [R2,#0x14]
VLDR            S3, [R2,#8]
VSUB.F32        S2, S2, S5
VLDR            S1, [R2,#0x10]
VLDR            S4, [R2,#4]
VSUB.F32        S0, S0, S3
VLDR            S7, [R2]
VSUB.F32        S1, S1, S4
VLDR            S4, =1.0
VLDR            S8, [R0]
VLDR            S6, [R0,#4]
VLDR            S9, [R1]
VMUL.F32        S3, S2, S2
VSUB.F32        S8, S7, S8
VLDR            S10, [R1,#4]
VLDR            S11, [R1,#8]
LDR             R12, [SP,#arg_0]
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S5, S3
VDIV.F32        S3, S4, S5
VLDR            S4, [R0,#8]
VLDR            S5, [R2,#4]
VSUB.F32        S7, S5, S6
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S3, S0, S3
VLDR            S0, [R2,#8]
VLDR            S5, [R1,#4]
VLDR            S6, [R1,#8]
VSUB.F32        S4, S0, S4
VLDR            S0, [R1]
VMUL.F32        S0, S0, S2
VMLA.F32        S0, S5, S1
VMLA.F32        S0, S6, S3
VMUL.F32        S5, S2, S0
VMUL.F32        S6, S1, S0
VMUL.F32        S0, S3, S0
VSUB.F32        S9, S5, S9
VSUB.F32        S5, S6, S10
VSUB.F32        S6, S0, S11
VMUL.F32        S0, S8, S2
VMLA.F32        S0, S7, S1
VMLA.F32        S0, S4, S3
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VSUB.F32        S0, S8, S2
VSUB.F32        S4, S4, S3
VSUB.F32        S1, S7, S1
VMUL.F32        S2, S0, S0
VMUL.F32        S3, S9, S0
VMUL.F32        S0, S9, S9
VMLA.F32        S2, S1, S1
VMLA.F32        S3, S5, S1
VMLA.F32        S0, S5, S5
VLDR            S1, [R0,#0xC]
VMLA.F32        S2, S4, S4
VMLA.F32        S3, S6, S4
VMLA.F32        S0, S6, S6
VLDR            S4, =0.0
VMLS.F32        S2, S1, S1
VMUL.F32        S1, S3, S3
VCMPE.F32       S0, S4
VMLS.F32        S1, S0, S2
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S5, S0
VNEGCC.F32      S5, S5
VMOV            R2, S5
CMP             R2, #0x34000000
BLE             loc_252844
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_25286C
VCMPE.F32       S2, S4
VLDR            S0, =3.4028e38
VSTR            S0, [R3]
LDM             R0, {R1,R2}
VMRS            APSR_nzcv, FPSCR
LDR             R0, [R0,#8]
STR             R0, [R12,#8]
STM             R12, {R1,R2}
BCC             loc_2528DC
B               loc_2528E4
VSQRT.F32       S5, S1
VNEG.F32        S1, S5
VSUB.F32        S3, S1, S3
VDIV.F32        S1, S3, S0
VSTR            S1, [R3]
VLDR            S0, [R1]
VLDR            S3, [R1,#4]
VLDR            S5, [R1,#8]
VMUL.F32        S0, S0, S1
VMUL.F32        S3, S3, S1
VMUL.F32        S1, S5, S1
VLDM            R0, {S5-S7}
VADD.F32        S0, S5, S0
VADD.F32        S3, S6, S3
VADD.F32        S1, S7, S1
VSTR            S0, [R12]
VSTR            S3, [R12,#4]
VSTR            S1, [R12,#8]
VLDR            S0, [R3]
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BLT             loc_2528D0
VMOV            R0, S0
CMP             R0, #0x3F800000
BLE             loc_2528DC
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_2528E4
MOV             R0, #1
BX              LR
MOV             R0, #0
BX              LR
