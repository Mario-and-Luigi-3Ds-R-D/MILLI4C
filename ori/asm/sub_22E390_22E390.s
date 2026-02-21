PUSH            {R4,LR}
MOV             R4, R1
LDRB            R1, [R1]
TST             R1, #1
BEQ             locret_22E408
TST             R1, #2
BNE             locret_22E408
TST             R1, #8
BEQ             loc_22E3FC
TST             R1, #4
BEQ             loc_22E40C
VLDR            S0, [R4,#4]
VLDR            S1, [R4,#0x3C]
VCVT.F32.S32    S0, S0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_22E3FC
LDR             R1, [R4,#0xC]
MOV             R2, R4
STR             R1, [R4,#0x10]
LDR             R1, [R0]
LDR             R3, [R1,#0x150]
ADD             R1, R0, #0x108
BLX             R3
LDRB            R0, [R4]
BIC             R0, R0, #1
STRB            R0, [R4]
LDR             R0, [R4,#4]
ADD             R0, R0, #1
STR             R0, [R4,#4]
POP             {R4,PC}
VLDR            S4, [R4,#0x14]
VLDR            S0, =0.0
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_22E3D4
VLDR            S3, [R4,#0x44]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S0
VLDRGT          S2, [R4,#0x38]
BLE             loc_22E3FC
VADD.F32        S2, S3, S2
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S0, S2
BGT             loc_22E438
VLDR            S2, [R4,#0x24]
VLDR            S1, =6.2832
VDIV.F32        S3, S2, S0
VDIV.F32        S0, S1, S3
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
ORRLS           R0, R1, #0x10
BICHI           R0, R1, #0x10
STRB            R0, [R4]
B               loc_22E3FC
