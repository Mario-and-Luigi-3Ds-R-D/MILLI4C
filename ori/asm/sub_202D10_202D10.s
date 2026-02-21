PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CDFD8
MOV             R5, R2
VPUSH           {D8}
VMOV            S0, R5
LDR             R0, [SP,#0x18+arg_0]
STRB            R2, [R4,#4]
STRB            R3, [R4,#5]
STR             R0, [R4,#8]
STR             R1, [R4]
LDR             R0, [R1,#0x568]
VLDR            S16, =1.0
STR             R4, [R0]
LDR             R0, [R1,#0x568]
ADD             R0, R0, #4
STR             R0, [R1,#0x568]
LDR             R0, [R6]
VLDR            S1, [R0,#0x280]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S2, S1
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S16, S2
VMUL.F32        S1, S0, S1
VSTR            S1, [R4,#0x14]
VADD.F32        S0, S1, S0
VSTR            S0, [R4,#0x18]
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S2, S0
VLDR            S0, =3.0
VMUL.F32        S1, S2, S1
VMUL.F32        S17, S1, S0
BL              sub_546DB0
VLDR            S1, =-1.0
TST             R0, #1
VMOVNE.F32      S0, S16
VMOVEQ.F32      S0, S1
LDRB            R1, [R4,#5]
CMP             R1, #0
VMUL.F32        S0, S17, S0
BEQ             loc_202DD4
LDR             R0, [R6]
TST             R1, #1
VMOVNE.F32      S1, S16
VLDR            S2, [R0,#0x288]
VMLA.F32        S0, S1, S2
LDR             R2, [R6]
VLDR            S2, [R4,#0x14]
VLDR            S3, [R2,#0x278]
VDIV.F32        S1, S0, S3
VADD.F32        S3, S2, S1
VLDR            S2, =0.0
VSTR            S3, [R4,#0x14]
VLDR            S0, [R4,#0x18]
VADD.F32        S1, S0, S1
VMOV.F32        S0, S16
VCMPE.F32       S3, S0
VSTR            S1, [R4,#0x18]
VMRS            APSR_nzcv, FPSCR
BGT             loc_202E20
VMOV.F32        S0, S2
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
VMOVCS.F32      S0, S3
VCMPE.F32       S1, S16
VMOV            R0, S0
VMOV.F32        S0, S2
STR             R0, [R4,#0x14]
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
BGT             loc_202E48
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S1
CMP             R0, #0x3F000000
MOVLE           R0, #1
MOVGT           R0, #0
VSTR            S0, [R4,#0x18]
STRB            R0, [R4,#7]
LDR             R0, [R2,#0x280]
LDR             R2, [R2]
MLA             R0, R0, R1, R5
CMP             R0, R2
MOVCC           R0, #1
MOVCS           R0, #0
STRB            R0, [R4,#0xC]
VPOP            {D8}
POP             {R4-R6,PC}
