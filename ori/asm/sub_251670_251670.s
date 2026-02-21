VLDR            S1, [R1]
VLDR            S0, [R2]
VLDR            S6, [R1,#4]
VLDR            S2, [R2,#4]
VMUL.F32        S1, S0, S1
VLDR            S5, [R1,#8]
VLDR            S3, [R2,#8]
VLDR            S4, =0.0
LDR             R12, [SP,#arg_0]
VMLA.F32        S1, S2, S6
VMLA.F32        S1, S3, S5
VCMP.F32        S1, S4
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #0
BEQ             locret_251704
VLDM            R0, {S4-S6}
VLDR            S7, [R2,#0xC]
VMUL.F32        S0, S0, S4
VMLA.F32        S0, S2, S5
VMLA.F32        S0, S3, S6
VSUB.F32        S2, S7, S0
VDIV.F32        S0, S2, S1
VSTR            S0, [R3]
VLDR            S2, [R1]
VLDR            S3, [R1,#8]
VLDR            S1, [R1,#4]
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VLDR            S0, [R0]
VLDR            S4, [R0,#8]
VLDR            S5, [R0,#4]
MOV             R0, #1
VADD.F32        S0, S0, S2
VADD.F32        S2, S4, S3
VADD.F32        S1, S5, S1
VSTM            R12, {S0-S2}
BX              LR
