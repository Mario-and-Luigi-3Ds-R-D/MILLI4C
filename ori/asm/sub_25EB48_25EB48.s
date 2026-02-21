PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R9, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x2C
LDR             R0, [R0,#0xC78]
LDR             R5, [R0]
ADD             R0, R4, #0x3FC
LDR             R7, [R5,#0x1A0]
BL              sub_5A18EC
STR             R7, [R4,#0x408]
ADD             R6, R4, #0x400
MOV             R0, R4
STR             R7, [R4,#0x400]
BL              sub_25E37C
ADD             R5, R5, #0x150
VLDR            S2, [R6,#0x38]
MOV             R11, #0
VLDM            R5, {S0-S1}
MOV             R5, R11
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S1, S2
VCVT.U32.F32    S0, S0
VMOV            R7, S0
CMP             R7, #0
BLS             loc_25ECC8
LDR             R10, =0x2AAAAAAB
ADD             R0, R4, #0xC00
ADD             R0, R0, #0x268
ADD             R8, SP, #0x60+var_58
STR             R0, [SP,#0x60+var_50]
MOV             R3, #0
LDR             R1, [SP,#0x60+var_50]
LDR             R0, =0x404
ADD             R6, SP, #0x60+var_5C
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_25EBFC
STR             R11, [SP,#0x60+var_60]
LDR             R1, [R4,#0xC78]
MOV             R3, #1
ADD             R2, R4, #0x28 ; '('
BL              sub_25E400
STR             R0, [SP,#0x60+var_5C]
ADD             R0, R6, #4
STR             R0, [SP,#0x60+var_54]
STR             R0, [SP,#0x60+var_58]
LDR             R0, [R4,#0xE64]
LDR             R2, [R4,#0xE60]
ADD             R1, R4, #0xC80
SUB             R2, R0, R2
SMULL           R3, R2, R10, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0x28 ; '('
BHI             loc_25EC6C
CMP             R0, #0
ADD             R1, R1, #0x1E0
BEQ             loc_25EC60
LDR             R3, [SP,#0x60+var_5C]
ADD             R2, SP, #0x60+var_58
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x60+var_54]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x60+var_54]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
LDR             R0, [SP,#0x60+var_54]
CMP             R0, R8
BNE             loc_25ECB0
LDR             R0, [SP,#0x60+var_5C]
CMP             R0, #0
BEQ             loc_25ECB0
MOV             R6, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_25EC9C
BL              sub_533330
STR             R11, [R6,#4]
ADD             R0, R6, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x60+var_58]
ADD             R5, R5, #1
CMP             R5, R7
STR             R1, [R0,#4]
STR             R0, [R1]
BCC             loc_25EBC4
VLDR            S1, [R9]
VLDR            S3, [R4,#0x28]
VLDR            S0, [R9,#8]
VLDR            S2, [R4,#0x30]
VSUB.F32        S1, S1, S3
VLDR            S16, =0.0
VSUB.F32        S0, S0, S2
ADD             R2, SP, #0x60+var_40
MOV             R1, #0
VSTR            S1, [SP,#0x60+var_40]
VSTR            S16, [SP,#0x60+var_3C]
VSTR            S0, [SP,#0x60+var_38]
LDR             R0, [R4,#0xC78]
VLDR            S0, [R9,#4]
VLDR            S1, [R4,#0x2C]
LDR             R0, [R0]
VSUB.F32        S18, S0, S1
ADD             R0, R0, #0x400
VLDR            S2, [R0,#0xC]
VLDR            S17, [R0,#0x10]
ADD             R0, R4, #0x1E0
VADD.F32        S0, S2, S0
VSUB.F32        S19, S0, S1
VMOV.F32        S0, S17
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x60+var_4C]
VSTR            S0, [SP,#0x60+var_48]
VMOV.F32        S2, S19
VMOV.F32        S1, S17
VMOV.F32        S0, S18
ADD             R2, SP, #0x60+var_4C
VSTR            S16, [SP,#0x60+var_44]
MOV             R1, #1
ADD             R0, R4, #0x1E0
BL              sub_5A28C4
MOV             R0, #7
STRB            R0, [R4,#0x3F8]
LDR             R0, =off_6CE970
MOV             R3, #1
ADD             R2, R4, #0x28 ; '('
MOV             R1, #0x2DC
LDR             R0, [R0]
STR             R11, [SP,#0x60+var_60]
BL              sub_52AEA8
STRB            R11, [R4,#0xC7C]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R11,PC}
