VLDR            S5, [R0]
VLDR            S3, [R1]
VLDR            S7, [R0,#4]
VLDR            S8, [R1,#4]
VMUL.F32        S5, S5, S3
VLDR            S4, [R0,#8]
VLDR            S6, [R1,#8]
VLDR            S12, =1.0
VADD.F32        S1, S1, S12
VMLA.F32        S5, S7, S8
VMUL.F32        S1, S1, S2
VMLA.F32        S5, S4, S6
VLDR            S6, [R0]
VLDR            S4, [R1,#8]
VMUL.F32        S10, S3, S5
VMUL.F32        S8, S8, S5
VMUL.F32        S9, S4, S5
VLDR            S3, [R0,#8]
VMUL.F32        S1, S1, S5
VSUB.F32        S11, S6, S10
VSUB.F32        S6, S7, S8
VSUB.F32        S7, S3, S9
VLDR            S3, =0.0
VMUL.F32        S1, S1, S1
VMUL.F32        S4, S11, S11
VMLA.F32        S4, S6, S6
VMLA.F32        S4, S7, S7
VCMPE.F32       S4, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S1, S3
VMOVLE.F32      S2, S3
BLE             loc_2537B4
VDIV.F32        S2, S1, S4
VSQRT.F32       S1, S2
VSUB.F32        S4, S12, S1
VCMPE.F32       S4, S3
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S4, S3
VMUL.F32        S3, S11, S4
VMUL.F32        S1, S6, S4
VMUL.F32        S2, S7, S4
VNEG.F32        S0, S0
VMUL.F32        S6, S9, S0
VMUL.F32        S4, S10, S0
VMUL.F32        S5, S8, S0
VADD.F32        S2, S6, S2
VADD.F32        S0, S4, S3
VADD.F32        S1, S5, S1
VSTM            R2, {S0-S2}
BX              LR
