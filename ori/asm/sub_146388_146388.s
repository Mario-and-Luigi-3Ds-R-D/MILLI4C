VSUB.F32        S2, S2, S0
VSUB.F32        S1, S3, S1
VLDR            S4, =0.0
VMUL.F32        S0, S2, S1
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BGT             loc_1463B0
VCMP.F32        S2, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1463C4
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
VLDRGT          S0, =2.0
VLDRLE          S0, =-2.0
BX              LR
VSUB.F32        S3, S2, S1
VDIV.F32        S0, S2, S3
VCMP.F32        S0, S4
VMRS            APSR_nzcv, FPSCR
BNE             loc_1463EC
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
VLDRGT          S0, =-1.1755e-38
VLDRLE          S0, =1.1755e-38
BX              LR
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
VNEGLE.F32      S0, S0
BX              LR
