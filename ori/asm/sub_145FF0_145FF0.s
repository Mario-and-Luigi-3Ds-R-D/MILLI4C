VLDR            S6, [R2]
VLDR            S8, [R1]
VLDR            S3, [R2,#4]
VLDR            S4, [R1,#4]
VSUB.F32        S6, S8, S6
VLDR            S7, [R3]
VSUB.F32        S3, S4, S3
VLDR            S5, [R3,#4]
VSUB.F32        S7, S8, S7
VLDR            S2, =0.0
VSUB.F32        S4, S4, S5
VMUL.F32        S9, S6, S6
VMUL.F32        S5, S7, S7
VMLA.F32        S9, S3, S3
VMLA.F32        S5, S4, S4
VSQRT.F32       S10, S9
VCMP.F32        S10, S2
VSQRT.F32       S9, S5
VMRS            APSR_nzcv, FPSCR
VMOVEQ.F32      S5, S2
BEQ             loc_146048
VDIV.F32        S5, S0, S10
VCMP.F32        S9, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_146058
VDIV.F32        S2, S1, S9
VMUL.F32        S0, S6, S5
VMUL.F32        S1, S3, S5
VMLA.F32        S0, S7, S2
VMLA.F32        S1, S4, S2
VADD.F32        S0, S0, S8
VSTR            S0, [R0]
VLDR            S0, [R1,#4]
VADD.F32        S0, S1, S0
VSTR            S0, [R0,#4]
BX              LR
