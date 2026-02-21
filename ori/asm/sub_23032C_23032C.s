VLDR            S2, =0.0
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
VCMPNE.F32      S0, S1
VMRSNE          APSR_nzcv, FPSCR
BNE             loc_230358
VLDR            S1, =2.0
VLDR            S2, =3.1416
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
BX              LR
VMUL.F32        S0, S0, S0
VMUL.F32        S1, S1, S1
VLDR            S3, =0.5
VLDR            S2, =6.2832
VMLA.F32        S0, S1, S3
VSQRT.F32       S1, S0
VMUL.F32        S0, S1, S2
BX              LR
