LDR             R1, [R0]
LDRB            R2, [R1,#0x400]
CMP             R2, #1
BXNE            LR
LDRB            R2, [R0,#0xD]
CMP             R2, #0
BXEQ            LR
ADD             R1, R1, #0x3F8
PUSH            {R4,R5}
LDR             R12, =off_6CDFD8
LDM             R1, {R2,R3}
MOV             R4, #0
STRB            R4, [R0,#6]
LDR             R1, [R12]
CMP             R3, #0
BEQ             loc_202B68
ADD             R3, R3, #0x400
VLDR            S2, [R0,#0x1C]
VLDR            S0, [R3,#0x188]
VLDR            S1, [R3,#0x194]
VLDR            S3, [R0,#0x28]
VCMPE.F32       S0, S2
MOV             R4, #1
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S2, S1
VMRSLS          APSR_nzcv, FPSCR
VCMPE.F32       S0, S3
MOVHI           R12, #0
MOVLS           R12, #1
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S3, S1
VMRSLS          APSR_nzcv, FPSCR
MOVHI           R3, #0
MOVLS           R3, #1
TST             R12, R3
BEQ             loc_202B34
STRB            R4, [R0,#6]
B               loc_202B68
VLDR            S4, [R1,#0x3C8]
CMP             R12, #0
BEQ             loc_202B50
VSUB.F32        S1, S3, S1
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_202B2C
CMP             R3, #0
BEQ             loc_202B68
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_202B2C
CMP             R2, #0
BEQ             loc_202BFC
ADD             R2, R2, #0x400
VLDR            S2, [R0,#0x34]
VLDR            S0, [R2,#0x17C]
VLDR            S1, [R2,#0x170]
VLDR            S3, [R0,#0x40]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S2, S1
VMRSLS          APSR_nzcv, FPSCR
VCMPE.F32       S0, S3
MOVHI           R3, #0
MOVLS           R3, #1
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S3, S1
VMRSLS          APSR_nzcv, FPSCR
MOVHI           R2, #0
MOVLS           R2, #1
TST             R3, R2
BNE             loc_202BF0
VLDR            S4, [R1,#0x3C8]
CMP             R3, #0
BEQ             loc_202BD8
VSUB.F32        S1, S3, S1
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_202BF0
CMP             R2, #0
BEQ             loc_202BFC
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_202BFC
LDRB            R1, [R0,#6]
ORR             R1, R1, #2
STRB            R1, [R0,#6]
POP             {R4,R5}
BX              LR
