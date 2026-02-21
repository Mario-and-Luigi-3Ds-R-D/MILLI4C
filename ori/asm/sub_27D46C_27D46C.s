PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_27D494
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
BLX             R1
LDR             R7, =off_6CDF98
LDR             R0, [R7]
LDR             R5, [R0,#0x124]
ADD             R0, R4, #0x400
BL              sub_5A18EC
ADD             R5, R5, #0x400
ADD             R0, R5, #0x98
ADD             R1, SP, #0x38+var_34
VLDM            R0, {S0-S1}
LDR             R0, [R7]
LDR             R8, =0x2AAAAAAB
VSUB.F32        S18, S0, S1
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
ADD             R0, R0, #0x580
LDM             R0, {R0,R1}
SUB             R0, R1, R0
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0x38+var_30]
UXTH            R6, R0
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_27D534
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_27D534
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
VMOV            S0, R6
VLDR            S1, =1.0
STR             R1, [R0,#4]
STR             R0, [R1]
LDRB            R0, [R4,#0x708]
VCVT.F32.U32    S2, S0
VLDR            S16, [R5,#0x9C]
VMOV            S0, R0
LDR             R0, [R7]
VLDR            S17, [R5,#0x34]
ADD             R1, SP, #0x38+var_34
LDR             R0, [R0,#0xC4]
VCVT.F32.U32    S3, S0
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
VDIV.F32        S0, S3, S2
ADD             R0, R0, #0x580
LDM             R0, {R0,R1}
VMLA.F32        S16, S18, S0
VSUB.F32        S18, S1, S17
SUB             R0, R1, R0
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, #1
LDR             R1, [SP,#0x38+var_30]
UXTH            R0, R0
VMOV            S0, R0
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
VCVT.F32.U32    S19, S0
BNE             loc_27D5F0
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_27D5F0
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
LDRB            R0, [R4,#0x708]
VMOV            S0, R0
LDR             R0, [R7]
LDR             R0, [R0,#0xC4]
VCVT.F32.U32    S1, S0
LDR             R1, [R0,#0x1C]
ADD             R1, R1, #0x580
LDM             R1, {R0,R1}
VDIV.F32        S0, S1, S19
SUB             R1, R1, R0
SMULL           R2, R1, R8, R1
VMLA.F32        S17, S18, S0
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
UXTH            R1, R1
CMP             R1, #1
MOVLS           R5, #0
BLS             loc_27D6AC
LDR             R2, [R0,#0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x38+var_34
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
LDR             R1, [SP,#0x38+var_30]
CMP             R0, R4
MOVEQ           R5, #1
MOVNE           R5, #0
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_27D6A0
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_27D6A0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R5, #0
BNE             loc_27D6C4
VMOV.F32        S1, S16
VMOV.F32        S0, S17
ADD             R0, R4, #0x400
BL              sub_5A12F8
MOV             R0, #1
STRB            R0, [R4,#0x56E]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}
