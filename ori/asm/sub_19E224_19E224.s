PUSH            {R4-R6}
ADD             R6, R1, #4
LDRD            R4, R5, [SP,#0xC+arg_4]
VLDR            S2, [R2,#4]
VLDR            S6, [R0,#4]
VLDR            S5, [R2]
VLDR            S7, [R0]
VSUB.F32        S2, S2, S6
VLDR            S6, [R3]
VLDR            S10, [R1]
VSUB.F32        S5, S5, S7
VLDR            S4, [R2,#8]
VSUB.F32        S6, S6, S10
VLDR            S3, [R0,#8]
VLDR            S7, [R3,#8]
LDR             R12, [SP,#0xC+arg_0]
VSUB.F32        S3, S4, S3
VLDM            R6, {S8-S9}
VLDR            S4, [R3,#4]
VSUB.F32        S4, S4, S8
VSUB.F32        S7, S7, S9
VSUB.F32        S9, S6, S5
VLDR            S8, =0.0
VSUB.F32        S6, S4, S2
VSUB.F32        S7, S7, S3
VMUL.F32        S4, S9, S9
VMLA.F32        S4, S6, S6
VMLA.F32        S4, S7, S7
VCMP.F32        S4, S8
VMRS            APSR_nzcv, FPSCR
BEQ             loc_19E31C
VMUL.F32        S10, S5, S5
VMUL.F32        S5, S5, S9
VADD.F32        S1, S0, S1
VMLA.F32        S10, S2, S2
VMLA.F32        S5, S2, S6
VMLA.F32        S10, S3, S3
VMLA.F32        S5, S3, S7
VMLS.F32        S10, S1, S1
VMUL.F32        S0, S5, S5
VMLS.F32        S0, S4, S10
VCMPE.F32       S8, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_19E31C
VSQRT.F32       S1, S0
VNEG.F32        S2, S5
VSUB.F32        S3, S1, S5
VSUB.F32        S2, S2, S1
VDIV.F32        S1, S3, S4
VDIV.F32        S0, S2, S4
VCMPE.F32       S0, S8
VMRS            APSR_nzcv, FPSCR
BCC             loc_19E304
VMOV            R6, S0
CMP             R6, #0x3F800000
BLE             loc_19E328
VCMPE.F32       S1, S8
VMRS            APSR_nzcv, FPSCR
BCC             loc_19E31C
VMOV            R6, S1
CMP             R6, #0x3F800000
BLE             loc_19E328
POP             {R4-R6}
MOV             R0, #0
BX              LR
VSTR            S0, [R12]
VLDR            S2, [R1]
VLDR            S6, [R0]
VLDR            S3, [R1,#4]
VLDR            S5, [R0,#4]
VLDR            S1, [R1,#8]
VLDR            S4, [R0,#8]
VSUB.F32        S2, S2, S6
VSUB.F32        S3, S3, S5
VSUB.F32        S1, S1, S4
VMOV.F32        S4, S6
VMOV.F32        S6, S5
VLDR            S5, [R0,#8]
MOV             R0, #1
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VADD.F32        S4, S4, S2
VADD.F32        S2, S6, S3
VADD.F32        S1, S5, S1
VSTR            S4, [R4]
VSTR            S2, [R4,#4]
VSTR            S1, [R4,#8]
VLDR            S3, [R3]
VLDR            S6, [R2]
VLDR            S2, [R3,#4]
VLDR            S5, [R2,#4]
VLDR            S1, [R3,#8]
VLDR            S4, [R2,#8]
VSUB.F32        S3, S3, S6
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S4
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VADD.F32        S0, S6, S3
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTR            S0, [R5]
VSTR            S2, [R5,#4]
VSTR            S1, [R5,#8]
POP             {R4-R6}
BX              LR
