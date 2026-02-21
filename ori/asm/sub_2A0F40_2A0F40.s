LDR             R1, [R0,#4]
MOV             R2, R1
ADD             R1, R1, #0x1C
ADD             R2, R2, #0x34 ; '4'
VLDR            S1, [R1]
VLDR            S2, [R1,#4]
VLDR            S0, [R1,#8]
LDR             R1, [R0,#4]
VLDM            R2!, {S5}
VLDM            R2, {S3-S4}
MOV             R2, R1
ADD             R2, R2, #0x40 ; '@'
VSUB.F32        S1, S1, S5
ADD             R1, R1, #0x28 ; '('
VSUB.F32        S5, S0, S4
VLDM            R2, {S6-S8}
VSUB.F32        S3, S2, S3
VLDR            S0, [R1]
VLDR            S4, [R1,#4]
VLDR            S2, [R1,#8]
VSUB.F32        S0, S0, S6
VSUB.F32        S4, S4, S7
VMUL.F32        S1, S1, S1
VSUB.F32        S2, S2, S8
LDR             R1, =off_6CDFD8
LDR             R1, [R1]
VMUL.F32        S0, S0, S0
ADD             R2, R1, #0x400
VMLA.F32        S1, S3, S3
VMLA.F32        S0, S4, S4
VMLA.F32        S1, S5, S5
VMLA.F32        S0, S2, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S4, [R2,#0xC4]
VLDR            S3, =1.0
VMOVCS.F32      S0, S1
VLDR            S2, [R1,#0x260]
VDIV.F32        S1, S0, S4
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S3
BGT             loc_2A0FF8
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S2
VSTR            S1, [R0,#0x27C]
BX              LR
