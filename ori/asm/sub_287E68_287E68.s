PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R4,#0x30]
BL              sub_127F6C
VMOV            S2, R0
VLDR            S0, [R4,#0x2C]
VLDR            S3, [R4,#0x34]
VMOV.F32        S1, S0
VCVT.F32.U32    S2, S2
VMLA.F32        S0, S2, S3
VLDR            S2, [R4,#0x38]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
VSTR            S0, [R4,#0xF4]
VSUB.F32        S3, S0, S1
VSUB.F32        S1, S2, S1
VDIV.F32        S0, S3, S1
VSTR            S0, [R4,#0xF8]
POP             {R4,PC}
