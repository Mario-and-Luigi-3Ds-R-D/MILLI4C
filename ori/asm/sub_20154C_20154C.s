VCVT.U32.F32    S1, S0
VLDR            S3, =0.5
VLDR            S2, =1.0
CMP             R1, #0
BEQ             loc_2015C0
CMP             R1, #1
BEQ             loc_2015EC
CMP             R1, #2
BEQ             loc_201618
CMP             R1, #3
BNE             locret_2015BC
LDR             R1, [R0,#4]
VLDR            S1, =0.0
LDR             R1, [R1,#0x634]
VCMPE.F32       S0, S1
STR             R1, [R0,#0x5C]
LDR             R1, [R0,#4]
VMRS            APSR_nzcv, FPSCR
LDR             R1, [R1,#0x630]
STR             R1, [R0,#0x64]
LDR             R1, [R0,#4]
LDR             R1, [R1,#0x628]
STR             R1, [R0,#0x60]
LDRH            R1, [R0,#0x70]
ORRGT           R1, R1, #2
BICLE           R1, R1, #2
BIC             R1, R1, #1
STRH            R1, [R0,#0x70]
BX              LR
VMOV            R1, S1
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S3
VADDNE.F32      S0, S0, S2
VCVT.S32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R0,#0x6A]
BX              LR
VMOV            R1, S1
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S3
VADDNE.F32      S0, S0, S2
VCVT.S32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R0,#0x6C]
BX              LR
VMOV            R1, S1
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S3
VADDNE.F32      S0, S0, S2
VCVT.S32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R0,#0x6E]
BX              LR
