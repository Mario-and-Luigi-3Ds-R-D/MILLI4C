PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R2, =0x19DEE8
VLDR            S1, =0.0039062
MOV             R1, #0
VPUSH           {D8}
LDRB            R3, [R4,#0x44]
LDR             R0, [R0]
CMP             R3, #1
ADD             R0, R0, R2; loc_19DEE8
BEQ             loc_2586B4
CMP             R3, #2
BNE             loc_25879C
B               loc_2586D8
VLDR            S0, [R0]
VLDR            S2, [R4,#0x40]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #2
STRBCC          R0, [R4,#0x44]
B               loc_25879C
VLDR            S3, [R0]
VLDR            S2, [R4,#0x3C]
LDR             R0, [R4]
VCVT.F32.S32    S3, S3
VLDR            S4, [R0,#0x1F8]
VNMLS.F32       S2, S3, S1
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
BLT             loc_25879C
VLDR            S17, [R4,#8]
VLDR            S3, [R0,#0x1D8]
VLDR            S1, [R0,#0x1D0]
VSUB.F32        S3, S17, S3
VMOV.F32        S2, S1
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S1, S3
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R0,#0x1EC]
VLDRGE          S1, [R0,#0x324]
VLDRLT          S1, =1.0
VMUL.F32        S2, S1, S2
VLDR            S1, =0.0
VMUL.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R4,#0x38]
VNEGCC.F32      S0, S0
VADD.F32        S0, S0, S2
VSTR            S0, [R4,#0x38]
VLDR            S2, [R0,#0x1F0]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_25879C
VSUB.F32        S0, S17, S0
VLDR            S16, [R0,#0x1D0]
VSTR            S1, [R4,#0x38]
ADD             R0, R4, #4
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S16, S0
BL              sub_5A18EC
VCMP.F32        S17, S16
VSTR            S16, [R4,#0x10]
VSTR            S16, [R4,#8]
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
VPOP            {D8}
MOV             R0, R1
POP             {R4,PC}
