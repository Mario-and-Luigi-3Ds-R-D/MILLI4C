VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
BLS             locret_12CC48
VLDR            S3, [R0,#0x50]
VLDR            S2, [R0,#0x5C]
VLDR            S1, [R0,#0x4C]
VSUB.F32        S3, S0, S3
VMUL.F32        S2, S2, S3
VDIV.F32        S3, S2, S0
VDIV.F32        S0, S3, S1
BX              LR
