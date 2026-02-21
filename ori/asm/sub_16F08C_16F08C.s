PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R0, [R0,#0x648]
TST             R0, #0x2000000
BEQ             loc_16F128
LDR             R1, [R4,#0x800]
ADD             R6, R4, #0x400
LDRH            R0, [R6,#0x68]
LDR             R5, [R1,#0x38]
CMP             R0, #1
BEQ             loc_16F110
CMP             R0, #4
BNE             loc_16F128
LDRH            R0, [R6,#0x6A]
CMP             R0, #4
BEQ             loc_16F128
LDRSB           R0, [R5,#0x1D]
CMP             R0, #0
LDRSBLT         R0, [R5,#0x1E]
CMPLT           R0, #0
BLT             loc_16F128
LDRH            R0, [R6,#0x6C]
VLDR            S0, =0.0
CMP             R0, #0x32 ; '2'
BEQ             loc_16F1EC
LDR             R0, [R4,#0x66C]
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R1, R4
POP             {R4-R6,LR}
MOV             R2, #0
B               sub_1459F8
LDRH            R0, [R6,#0x6A]
CMP             R0, #1
BEQ             loc_16F130
LDRSB           R0, [R5,#0x1D]
CMP             R0, #0
BGE             loc_16F0E4
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, =0x2698
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_16F148
CMP             R0, #2
BNE             loc_16F15C
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x118]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_16F17C
CMP             R0, #1
CMPNE           R0, #3
BNE             loc_16F128
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R4,#0x11C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16F128
LDR             R0, [R4,#0x7FC]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
MOV             R2, R0
LDRSB           R0, [R5,#0x1D]
CMP             R0, R2
LDRSBNE         R0, [R5,#0x1E]
CMPNE           R0, R2
BNE             loc_16F128
LDR             R0, [R4,#0x7FC]
VLDR            S0, =0.0039062
VLDR            S1, [R0,#0x10]
LDRSH           R1, [R0,#0x14]
VCVT.F32.S32    S3, S1
VMOV            S2, R1
MOV             R1, #0xFFFFFFFF
VCVT.F32.S32    S1, S2
VMUL.F32        S16, S3, S0
VMLA.F32        S16, S1, S0
BL              sub_5F15E4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_16F128
B               loc_16F0E4
LDR             R0, [R4,#0x670]
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R1, R4
POP             {R4-R6,LR}
MOV             R2, #0
B               sub_1459F8
