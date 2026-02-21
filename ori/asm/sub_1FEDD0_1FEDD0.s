PUSH            {R3-R9,LR}
MOV             R4, R0
MOV             R7, #1
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_1FEE20
CMP             R0, #1
BEQ             loc_1FEE50
CMP             R0, #2
BEQ             loc_1FF00C
CMP             R0, #4
BNE             locret_1FEE4C
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
BNE             locret_1FEE4C
MOV             R0, R4
POP             {R3-R9,LR}
MOV             R1, #1
B               sub_1FF054
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1FEE4C
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xF
ADD             R0, R4, #0x10
BL              sub_14C548
STRB            R7, [R4,#0xE]
POP             {R3-R9,PC}
LDR             R0, =off_6CE970
LDRB            R1, [R4,#0xC]
LDR             R0, [R0]
CMP             R1, #0
MOVNE           R1, #2
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
MOVEQ           R1, #1
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
CMP             R0, R1
BNE             locret_1FEE4C
LDR             R5, [R4]
MOV             R6, #0
LDR             R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_1FEE98
BL              sub_533330
STR             R6, [R5,#0x14]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1FEEBC
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R5,#4]
LDRB            R0, [R4,#0xC]
LDR             R8, =off_6CDC90
MOV             R2, #0xFFFFFF00
CMP             R0, #0
REV             R2, R2
LDR             R0, [R8]
MOV             R1, SP
VLDR            S0, =4.0
ADDEQ           R0, R0, #0x12400
ADDEQ           R0, R0, #0x398
ADDNE           R0, R0, #0x12800
ADDNE           R0, R0, #0x38C
ADD             R0, R0, #0x32C
STR             R2, [SP,#0x20+var_20]
BL              sub_4E665C
LDR             R0, [R8]
ADD             R1, R4, #0x400
ADD             R1, R1, #4
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
LDR             R0, [R0,#0x1C]
LDR             R0, [R0,#-0xC]
LDRB            R2, [R0,#0x3F8]
CMP             R2, #5
MOVEQ           R6, R7
BEQ             loc_1FEF70
CMP             R2, #2
BNE             loc_1FEF70
LDR             R2, [R0,#0x208]
VLDR            S2, [R0,#0x3FC]
ADD             R0, R0, #0x400
VLDR            S0, [R2,#0x10]
VLDR            S1, [R2,#0xC]
VSUB.F32        S0, S0, S1
VLDR            S1, [R0]
VSUB.F32        S0, S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1FEF6C
VLDR            S1, [R0,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVGE           R6, #1
BGE             loc_1FEF70
MOV             R6, #0
STRB            R6, [R1]
TST             R6, #0xFF
STR             R7, [R1,#4]
BEQ             loc_1FEFE8
ADD             R5, R4, #0x400
LDR             R0, [R8]
ADD             R5, R5, #0xC
BL              sub_1F9D54
VSTR            S0, [R5]
MOV             R0, #4
STR             R7, [R5,#4]
STRB            R0, [R4,#0xE]
LDR             R0, [R8]
VLDR            S1, =256.0
MOV             R2, #1
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
MOV             R1, #0x10
LDR             R0, [R0]
LDR             R0, [R0,#0x2A0]
VMOV            S0, R0
STR             R0, [SP,#0x20+var_20]
ADD             SP, SP, #4
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R3, R0
ADD             R0, R4, #0x10
POP             {R4-R9,LR}
B               sub_14C548
MOV             R0, #2
STRB            R0, [R4,#0xE]
ADD             SP, SP, #4
ADD             R0, R4, #0x10
POP             {R4-R9,LR}
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x11
B               sub_14C548
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1FEE4C
MOV             R0, #3
STRB            R0, [R4,#0xE]
ADD             SP, SP, #4
ADD             R0, R4, #0x10
POP             {R4-R9,LR}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x12
B               sub_14C548
