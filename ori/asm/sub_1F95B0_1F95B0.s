PUSH            {R4-R11,LR}
MOV             R7, R0
MOV             R0, #0
MOV             R8, R1
LDR             R10, =off_6CDC90
MOV             R1, #0
VPUSH           {D8-D10}
SUB             SP, SP, #0x3C
MOV             R11, R2
MOV             R2, #1
STRB            R0, [R7,#4]
LDR             R0, =off_6BB7D0
CMP             R8, #0
MOV             R4, R1
STR             R0, [R7]
ADD             R0, R7, #8
STR             R0, [R7,#0x14]
STR             R0, [R7,#0x18]
STR             R8, [R7,#0x1C]
STR             R1, [R7,#0x20]
STRB            R1, [R7,#0x24]
STRB            R2, [R7,#0x25]
LDR             R0, [R10]
LDR             R0, [R0,#0x2C]
STR             R0, [SP,#0x78+var_4C]
BLS             loc_1F9898
VNEG.F32        S1, S0
VCVT.S32.F32    S16, S0
VLDR            S18, =0.0
ADD             R9, SP, #0x78+var_64
VCVT.S32.F32    S17, S1
LDR             R0, [R10]
ADD             R6, SP, #0x78+var_68
ADD             R1, R0, #0x12000
ADD             R1, R1, #0x750
LDR             R0, [R1,#4]
CMP             R0, #0
LDR             R2, [R0]
MOVEQ           R5, #0
STR             R2, [R1,#4]
LDR             R2, [R1,#8]
SUB             R2, R2, #1
STR             R2, [R1,#8]
BEQ             loc_1F9700
LDR             R1, [SP,#0x78+var_4C]
STR             R1, [SP,#0x78+var_70]
MOV             R1, #1
STR             R1, [SP,#0x78+var_6C]
BL              sub_14F198
LDR             R1, [SP,#0x78+var_6C]
MOV             R5, R0
MOV             R0, #0
STR             R1, [R5,#0x3F4]
STRB            R0, [R5,#0x3F8]
MOV             R2, R0
LDR             R1, [SP,#0x78+var_70]
MOV             R0, R5
BL              sub_14E6E0
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R5,#0xF1]
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R5
BL              sub_14C548
LDR             R0, =dword_6D1F40
STR             R0, [SP,#0x78+var_70]
MOV             R0, R5
BL              sub_5C5724
STR             R0, [SP,#0x78+var_6C]
LDR             R0, [SP,#0x78+var_70]
BL              sub_546DB0
MOV             R1, R0
LDR             R0, [SP,#0x78+var_6C]
MUL             R0, R1, R0
MOV             R1, R0,LSR#16
MOV             R0, R5
BL              sub_14F01C
ADD             R0, R6, #4
STR             R0, [SP,#0x78+var_60]
STR             R0, [SP,#0x78+var_64]
LDR             R0, =dword_6D1F40
STR             R5, [SP,#0x78+var_68]
BL              sub_546DB0
MOV             R5, R0
LDR             R0, [R10]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R1, [R0,#0x190]
MOV             R0, #0
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, [R10]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
VCVT.F32.S32    S19, S0
LDR             R0, [R0]
LDR             R1, [R0,#0x194]
RSB             R0, R1, #0
BL              sub_47EADC
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.S32    S20, S0
BL              sub_464278
VMUL.F32        S19, S0, S19
MOV             R0, R5
BL              sub_4642E0
VMUL.F32        S20, S0, S20
LDR             R2, =dword_6D1F40
VMOV            R1, S16
VMOV            R0, S17
BL              sub_47EADC
VMOV            S0, R0
VLDR            S2, [R11,#8]
VLDR            S1, [R11]
VLDR            S3, [R11,#4]
VADD.F32        S2, S2, S20
ADD             R0, SP, #0x78+var_5C
VCVT.F32.S32    S0, S0
VADD.F32        S0, S0, S19
VADD.F32        S0, S1, S0
VADD.F32        S1, S3, S18
VSTM            R0, {S0-S2}
LDR             R0, [SP,#0x78+var_68]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x78+var_5C
BLX             R2
LDR             R0, [R7,#0x18]
LDR             R3, [R7,#0x14]
LDR             R2, =0x2AAAAAAB
ADD             R1, R7, #8
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #1
BHI             loc_1F9838
CMP             R0, #0
ADD             R1, R1, #0xC
BEQ             loc_1F982C
LDR             R3, [SP,#0x78+var_68]
ADD             R2, SP, #0x78+var_64
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x78+var_60]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x78+var_60]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
LDR             R0, [SP,#0x78+var_60]
CMP             R0, R9
BNE             loc_1F9880
LDR             R0, [SP,#0x78+var_68]
CMP             R0, #0
BEQ             loc_1F9880
MOV             R6, R0
LDR             R0, [R10]
ADD             R5, R0, #0x12000
ADD             R5, R5, #0x750
MOV             R0, R6
BL              sub_14F3EC
LDR             R0, [R5,#4]
STR             R0, [R6]
STR             R6, [R5,#4]
LDR             R0, [R5,#8]
ADD             R0, R0, #1
STR             R0, [R5,#8]
LDRD            R0, R1, [SP,#0x78+var_64]
ADD             R4, R4, #1
CMP             R4, R8
STR             R1, [R0,#4]
STR             R0, [R1]
BCC             loc_1F962C
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R7
VPOP            {D8-D10}
POP             {R4-R11,PC}
