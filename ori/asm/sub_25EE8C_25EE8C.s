PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R0, R0, #0x1E0
VPUSH           {D8}
SUB             SP, SP, #0x14
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_25F07C
LDR             R0, =off_6CE970
LDR             R2, =0x19DEE8
VLDR            S2, =0.0039062
LDR             R5, [R4,#0xC78]
LDR             R0, [R0]
ADD             R1, R4, #4
ADD             R2, R2, R0; loc_19DEE8
VLDR            S1, [R5,#4]
VLDR            S0, [R2]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S2
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25EEFC
LDR             R12, =0xFFE683CC
LDR             R2, =0x30189
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
VSTR            S16, [R5,#4]
LDR             R0, [R4,#0xC78]
VLDR            S0, =0.0
MOV             R11, #0
MOV             R5, R11
LDR             R7, [R0]
VLDR            S1, [R7,#0x158]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_25F050
LDR             R10, =0x2AAAAAAB
ADD             R0, R4, #0xC00
ADD             R0, R0, #0x268
ADD             R9, R4, #0xC00
ADD             R8, SP, #0x40+var_38
STR             R0, [SP,#0x40+var_30]
MOV             R3, #0
LDR             R1, [SP,#0x40+var_30]
LDR             R0, =0x404
ADD             R6, SP, #0x40+var_3C
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_25EF74
LDRSB           R1, [R9,#0x7C]
MOV             R3, #0
ADD             R2, R4, #0x28 ; '('
STR             R1, [SP,#0x40+var_40]
LDR             R1, [R4,#0xC78]
BL              sub_25E400
STR             R0, [SP,#0x40+var_3C]
ADD             R0, R6, #4
STR             R0, [SP,#0x40+var_34]
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R4,#0xE64]
LDR             R2, [R4,#0xE60]
ADD             R1, R4, #0xC80
SUB             R2, R0, R2
SMULL           R3, R2, R10, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0x28 ; '('
BHI             loc_25EFE4
CMP             R0, #0
ADD             R1, R1, #0x1E0
BEQ             loc_25EFD8
LDR             R3, [SP,#0x40+var_3C]
ADD             R2, SP, #0x40+var_38
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x40+var_34]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x40+var_34]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
LDR             R0, [SP,#0x40+var_34]
CMP             R0, R8
BNE             loc_25F028
LDR             R0, [SP,#0x40+var_3C]
CMP             R0, #0
BEQ             loc_25F028
MOV             R6, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_25F014
BL              sub_533330
STR             R11, [R6,#4]
ADD             R0, R6, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
ADD             R5, R5, #1
VMOV            S0, R5
LDRD            R0, R1, [SP,#0x40+var_38]
STR             R1, [R0,#4]
VCVT.F32.U32    S0, S0
STR             R0, [R1]
VLDR            S1, [R7,#0x158]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_25EF38
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_25F064
BL              sub_533330
STR             R11, [R4]
LDR             R0, [R4,#0x10]
CMP             R0, #0
ADDNE           R0, R4, #4
BLNE            sub_528B1C
MOV             R0, #8
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
