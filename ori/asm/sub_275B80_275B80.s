VLDR            S3, [R0]
VLDR            S6, [R2]
VLDR            S4, [R0,#4]
VLDR            S5, [R2,#4]
VSUB.F32        S3, S3, S6
VLDR            S1, [R0,#8]
VLDR            S2, [R2,#8]
VSUB.F32        S5, S4, S5
VLDM            R1, {S6-S8}
VSUB.F32        S4, S1, S2
VLDR            S1, =0.0
LDR             R12, [SP,#arg_0]
VMUL.F32        S2, S3, S3
VMUL.F32        S3, S3, S6
VMLA.F32        S2, S5, S5
VMLA.F32        S3, S5, S7
VMLA.F32        S2, S4, S4
VMLA.F32        S3, S4, S8
VMLS.F32        S2, S0, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VCMPEGT.F32     S3, S1
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_275BF0
VNMLS.F32       S2, S3, S3
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_275BF8
MOV             R0, #0
BX              LR
VNEG.F32        S0, S3
VSQRT.F32       S3, S2
VSUB.F32        S0, S0, S3
VSTR            S0, [R3]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S0
VSTR            S1, [R3]
VLDR            S4, [R0,#8]
VLDR            S5, [R0,#4]
VLDM            R1!, {S0}
VLDM            R1, {S2-S3}
VMUL.F32        S0, S0, S1
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S3, S1
VLDR            S3, [R0]
MOV             R0, #1
VADD.F32        S3, S3, S0
VADD.F32        S0, S5, S2
VADD.F32        S1, S4, S1
VSTM            R12!, {S3}
VSTM            R12, {S0-S1}
BX              LR
