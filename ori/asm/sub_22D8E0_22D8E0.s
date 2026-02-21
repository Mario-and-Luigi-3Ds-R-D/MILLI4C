VLDR            S4, =0.0
ADD             R0, R0, #0x400
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S1, S4
VSTRGE          S0, [R0,#0x7C]
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S2, S4
VSTRGE          S1, [R0,#0x84]
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S3, S4
VSTRGE          S2, [R0,#0x8C]
VMRS            APSR_nzcv, FPSCR
VSTRLS          S3, [R0,#0x94]
VSTR            S4, [R0,#0x78]
BX              LR
