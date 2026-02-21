PUSH            {R4-R6,LR}
MOV             R5, R2
LDR             R4, [SP,#0x10+arg_0]
MOV             R2, R0
MOV             R6, R3
MOV             R0, R4
BL              sub_1423B4
VLDR            S5, [R4]
VLDR            S0, [R4,#0xC]
VLDR            S4, [R4,#4]
VMOV            S1, R6
VDIV.F32        S6, S5, S0
VLDR            S2, =0.5
VMOV            S3, R5
RSB             R0, R5, #0
VCVT.F32.U32    S1, S1
ADD             R0, R0, R0,LSR#31
VCVT.F32.U32    S3, S3
MOV             R0, R0,ASR#1
VDIV.F32        S5, S4, S0
VMUL.F32        S0, S6, S2
VMUL.F32        S2, S5, S2
VMUL.F32        S0, S0, S3
VMUL.F32        S1, S2, S1
VMOV            S2, R0
VCVT.F32.S32    S2, S2
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1459EC
MOV             R0, R5,LSR#1
VMOV            S2, R0
VCVT.F32.U32    S2, S2
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1459EC
RSB             R0, R6, #0
ADD             R0, R0, R0,LSR#31
MOV             R0, R0,ASR#1
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1459EC
MOV             R0, R6,LSR#1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #0
BGE             locret_1459F0
MOV             R0, #1
POP             {R4-R6,PC}
