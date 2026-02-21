PUSH            {R4-R6}
MUL             R5, R2, R2
VLDR            S1, =0.0
MLA             R6, R3, R3, R5
LDR             R12, [SP,#0xC+arg_4]
MOV             R4, #0
VMOV            S0, R6
VCVT.F32.S32    S2, S0
VCMP.F32        S2, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_11B8D4
MUL             R6, R3, R3
VLDR            S1, =-36.0
VLDR            S0, =36.0
CMP             R6, R5
BGE             loc_11B870
CMP             R2, #0
BGE             loc_11B850
VMOV            S0, R3
VMOV            S3, R2
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S3, S3
VMUL.F32        S4, S1, S0
VDIV.F32        S0, S4, S3
B               loc_11B8B0
VMOV            S3, R3
VMOV.F32        S1, S0
VMOV            S4, R2
VCVT.F32.S32    S0, S3
VCVT.F32.S32    S3, S4
VMUL.F32        S4, S1, S0
VDIV.F32        S0, S4, S3
B               loc_11B8B0
CMP             R3, #0
BGE             loc_11B898
VMOV            S3, R2
VMOV.F32        S0, S1
VMOV            S4, R3
VCVT.F32.S32    S1, S3
VCVT.F32.S32    S3, S4
VMUL.F32        S4, S0, S1
VDIV.F32        S1, S4, S3
B               loc_11B8B0
VMOV            S1, R2
VMOV            S3, R3
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S3, S3
VMUL.F32        S4, S0, S1
VDIV.F32        S1, S4, S3
VLDR            S3, =1600.0
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S1, S3
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_11B8E4
STRH            R4, [R0]
STRH            R4, [R1]
POP             {R4-R6}
BX              LR
VMOV            S0, R12
MUL             R4, R12, R12
SUB             R12, R12, #0x28 ; '('
VMOV            S6, R12
VMOV            S5, R4
VCVT.F32.S32    S3, S0
VSQRT.F32       S0, S1
VCVT.F32.S32    S5, S5
VSUB.F32        S4, S3, S0
VCMPE.F32       S2, S5
VSQRT.F32       S1, S2
VSUB.F32        S3, S1, S0
VCVT.F32.S32    S0, S6
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R2
BLT             loc_11B960
VMOV            S3, R3
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S3, S3
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VDIV.F32        S0, S2, S1
VCVT.S32.F32    S0, S0
VDIV.F32        S2, S3, S1
VMOV            R2, S0
STRH            R2, [R0]
VCVT.S32.F32    S1, S2
VMOV            R3, S1
STRH            R3, [R1]
POP             {R4-R6}
BX              LR
VCVT.F32.S32    S2, S2
VMOV            S5, R3
VMUL.F32        S1, S4, S1
VCVT.F32.S32    S4, S5
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S4, S0
VMUL.F32        S2, S2, S3
VMUL.F32        S3, S0, S3
VDIV.F32        S0, S2, S1
VCVT.S32.F32    S0, S0
VDIV.F32        S2, S3, S1
VMOV            R2, S0
STRH            R2, [R0]
VCVT.S32.F32    S1, S2
VMOV            R3, S1
STRH            R3, [R1]
POP             {R4-R6}
BX              LR
