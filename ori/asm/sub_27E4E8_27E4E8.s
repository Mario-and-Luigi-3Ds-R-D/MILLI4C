PUSH            {R4-R11,LR}
MOV             R6, R1
MOV             R1, #0
MOV             R5, R0
CMP             R2, #3
MOVEQ           R9, #1
VPUSH           {D8}
SUB             SP, SP, #0x44
STRB            R1, [R0,#0x1D]
STRB            R2, [R0,#0x1E]
LDR             R0, =off_6BC250
STR             R0, [R5]
ADD             R0, R5, #0x20 ; ' '
STR             R0, [R5,#0x44]
STR             R0, [R5,#0x48]
LDR             R0, =off_6CDF98
LDR             R3, [R0]
LDR             R3, [R3,#0x124]
ADDEQ           R10, R3, #0xE8
STR             R3, [SP,#0x70+var_38]
BEQ             loc_27E558
CMP             R2, #4
MOVEQ           R9, #2
ADDEQ           R10, R3, #0xF4
BEQ             loc_27E558
CMP             R2, #5
MOVEQ           R9, #3
ADDEQ           R10, R3, #0x10C
CMP             R9, #0
VLDR            S16, =3.4028e38
VLDR            S17, =-3.4028e38
MOV             R4, #0
ADDHI           R11, SP, #0x70+var_60
BLS             loc_27E734
ADD             R0, R4, R4,LSL#1
VLDR            S3, [R6]
ADD             R0, R10, R0,LSL#2
VLDR            S2, [R6,#4]
VLDR            S5, [R0]
VLDR            S1, [R0,#4]
VLDR            S0, [R6,#8]
VLDR            S4, [R0,#8]
VADD.F32        S3, S3, S5
VADD.F32        S1, S2, S1
VADD.F32        S0, S0, S4
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R7, SP, #0x70+var_64
MOV             R2, R3
VSTR            S3, [SP,#0x70+var_44]
VSTR            S1, [SP,#0x70+var_40]
VSTR            S0, [SP,#0x70+var_3C]
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x3F8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_27E668
ADD             R1, SP, #0x70+var_44
STR             R1, [SP,#0x70+var_54]
BL              sub_14F198
MOV             R8, R0
LDR             R0, =off_6CDF98
MOV             R2, #0
LDR             R0, [R0]
LDR             R1, [R0,#0x144]
MOV             R0, R8
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
MOV             R0, R8
BL              sub_14C548
MOV             R1, #1
MOV             R0, R8
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R8,#0xF1]
LDR             R1, [SP,#0x70+var_54]
MOV             R0, R8
BL              sub_14E984
LDR             R0, =off_6CDF98
ADD             R12, R8, #0x30 ; '0'
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x4D0
LDM             R0, {R1-R3}
MOV             R0, R8
STM             R12, {R1,R2}
MOV             R1, #0
STR             R3, [R8,#0x38]
BL              sub_14C3E8
MOV             R1, #0
MOV             R0, R8
STRB            R1, [R8,#0x3F4]
STR             R0, [SP,#0x70+var_64]
ADD             R0, R7, #4
STR             R0, [SP,#0x70+var_5C]
STR             R0, [SP,#0x70+var_60]
LDR             R0, [R5,#0x48]
LDR             R2, [R5,#0x44]
LDR             R1, =0x2AAAAAAB
SUB             R2, R0, R2
SMULL           R2, R1, R1, R2
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R1, R1, #1
CMP             R1, #3
BHI             loc_27E6D4
CMP             R0, #0
BEQ             loc_27E6C8
LDR             R1, [SP,#0x70+var_64]
STR             R1, [R0],#4
ADD             R1, R7, #4
STR             R1, [R0]
LDR             R1, [SP,#0x70+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x70+var_5C]
LDR             R0, [R5,#0x48]
ADD             R0, R0, #0xC
STR             R0, [R5,#0x48]
LDR             R0, [SP,#0x70+var_5C]
CMP             R0, R11
BNE             loc_27E6FC
LDR             R0, [SP,#0x70+var_64]
CMP             R0, #0
BEQ             loc_27E6FC
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x70+var_60]
ADD             R4, R4, #1
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [SP,#0x70+var_44]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S17, S0
VMOVGT.F32      S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S17
CMP             R4, R9
VMOV.F32        S17, S0
BCC             loc_27E570
LDR             R0, [SP,#0x70+var_38]
ADD             R1, R6, #4
VLDR            S2, [R6]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xF8
VLDM            R1, {S0-S1}
ADD             R2, R5, #0x10
VLDM            R0, {S3-S5}
ADD             R0, R5, #8
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VSTR            S2, [R5,#4]
VSTM            R0, {S0-S1}
LDR             R0, [SP,#0x70+var_38]
ADD             R1, R0, #0x400
VLDR            S0, [R1,#0xF8]
VADD.F32        S0, S0, S16
VSTR            S0, [R5,#4]
LDR             R0, [SP,#0x70+var_38]
VLDR            S0, [R6,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x104
VLDM            R6, {S1-S2}
VLDM            R0, {S3-S5}
MOV             R0, #1
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VSTR            S0, [R5,#0x18]
VSTM            R2, {S1-S2}
VLDR            S0, [R1,#0x104]
VADD.F32        S0, S0, S17
VSTR            S0, [R5,#0x10]
STRB            R0, [R5,#0x1C]
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, R5
VPOP            {D8}
POP             {R4-R11,PC}
