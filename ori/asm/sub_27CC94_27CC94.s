PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R10, =off_6CDF98
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x40
LDR             R0, [R10]
LDR             R7, [R0,#0x124]
ADD             R0, R4, #0x400
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x400
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x4C0
BL              sub_5A2484
LDR             R0, [R4,#0x6F8]
VLDR            S19, =1.0
ADD             R5, R4, #0x400
CMP             R0, #0
BEQ             loc_27CD5C
ADD             R1, R0, #0x400
LDR             R2, [R10]
VLDR            S0, [R1,#4]
VLDR            S1, [R1,#0x304]
LDR             R0, [R0,#0x6F8]
LDR             R1, [R2,#0x124]
VMUL.F32        S16, S0, S1
VSUB.F32        S0, S19, S0
LDR             R8, [R4,#0x4CC]
VLDR            S1, [R1,#0x2DC]
LDR             R9, [R4,#0x4C4]
CMP             R0, #0
VMLA.F32        S16, S0, S1
BEQ             loc_27CD2C
BL              sub_5CCE98
VADD.F32        S16, S0, S16
VLDR            S0, [R5,#0xB4]
ADD             R6, R4, #0x4C0
MOV             R0, R6
VADD.F32        S16, S16, S0
BL              sub_5A26D0
STR             R9, [R6,#0x1C]
VSTR            S16, [R6,#0x20]
STR             R8, [R6,#0x24]
STR             R9, [R6,#4]
VSTR            S16, [R6,#8]
STR             R8, [R6,#0xC]
B               loc_27CD8C
ADD             R6, R4, #0x4C0
LDR             R8, [R4,#0x4CC]
LDR             R9, [R4,#0x4C4]
VLDR            S16, [R5,#0xB4]
MOV             R0, R6
BL              sub_5A26D0
STR             R9, [R6,#0x1C]
VSTR            S16, [R6,#0x20]
STR             R8, [R6,#0x24]
STR             R9, [R6,#4]
VSTR            S16, [R6,#8]
STR             R8, [R6,#0xC]
MOV             R0, R4
BL              sub_27D73C
LDRB            R0, [R4,#0x3F8]
VLDR            S16, =0.0
CMP             R0, #1
BNE             loc_27D0AC
LDR             R0, [R10]
ADD             R1, SP, #0x70+var_6C
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#0x1C]
LDR             R0, [R0,#0x580]
LDR             R2, [R0],#4
STR             R0, [SP,#0x70+var_6C]
STR             R2, [SP,#0x70+var_70]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x70+var_68]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x70+var_70]
LDR             R1, [SP,#0x70+var_68]
CMP             R0, R4
MOVEQ           R6, #1
MOVNE           R6, #0
ADD             R0, SP, #0x70+var_6C
CMP             R1, R0
BNE             loc_27CE0C
LDR             R0, [SP,#0x70+var_70]
CMP             R0, #0
BEQ             loc_27CE0C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x70+var_6C]
CMP             R6, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27D0AC
ADD             R1, R4, #0x400
ADD             R1, R1, #0x78 ; 'x'
MOV             R0, R4
BL              sub_27D370
LDR             R0, [R10]
ADD             R1, SP, #0x70+var_3C
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x70+var_3C]
STR             R2, [SP,#0x70+var_40]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x70+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x70+var_40]
LDR             R2, [R0,#0x580]!
LDR             R1, [R0,#4]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, #1
LDR             R1, [SP,#0x70+var_38]
UXTH            R0, R0
VMOV            S0, R0
ADD             R0, SP, #0x70+var_3C
CMP             R1, R0
VCVT.F32.U32    S17, S0
BNE             loc_27CEB8
LDR             R0, [SP,#0x70+var_40]
CMP             R0, #0
BEQ             loc_27CEB8
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x70+var_3C]
VCVT.U32.F32    S0, S17
VLDR            S17, =40.744
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, =dword_6CDFC0
VLDR            S1, [R5,#0x38]
VLDR            S3, [R5,#4]
VMOV            R0, S0
VLDR            S2, [R1]
VLDR            S0, [R7,#0x2CC]
VMUL.F32        S1, S1, S3
UXTH            R0, R0
VMUL.F32        S3, S0, S2
ADD             R0, R7, R0,LSL#2
VLDR            S0, [R1,#(flt_6CDFC4 - 0x6CDFC0)]
VLDR            S2, [R0,#0x380]
VMUL.F32        S1, S1, S3
VMLA.F32        S0, S1, S2
VSTR            S0, [R4,#0x3FC]
VMUL.F32        S0, S0, S17
BL              sub_464380
VMOV.F32        S18, S0
VLDR            S0, [R4,#0x3FC]
VMUL.F32        S0, S0, S17
BL              sub_464318
VNEG.F32        S1, S18
VSTR            S0, [SP,#0x70+var_70]
ADD             R8, R4, #0x400
ADD             R0, R4, #0x5D0
ADD             R8, R8, #0xC4
VSTR            S1, [SP,#0x70+var_6C]
VSTR            S16, [SP,#0x70+var_68]
VSTR            S16, [SP,#0x70+var_64]
VSTR            S18, [SP,#0x70+var_60]
VSTR            S0, [SP,#0x70+var_5C]
VSTR            S16, [SP,#0x70+var_58]
VSTR            S16, [SP,#0x70+var_54]
VSTR            S16, [SP,#0x70+var_50]
VSTR            S16, [SP,#0x70+var_4C]
VSTR            S19, [SP,#0x70+var_48]
VSTR            S16, [SP,#0x70+var_44]
VMOV.F32        S17, S0
VLDR            S0, [R0]
VLDR            S1, [R8]
MOV             R1, SP
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R8,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R8,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#8]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1F4
VLDR            S1, [R8]
VLDR            S0, [R0]
MOV             R6, R0
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R8,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R8,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#8]
ADD             R0, R4, #0x5D0
MOV             R2, R0
BL              sub_1169FC
MOV             R0, R6
MOV             R2, R0
MOV             R1, SP
BL              sub_1169FC
ADD             R0, R4, #0x5D0
VLDR            S1, [R8]
VLDR            S0, [R0]
MOV             R1, SP
VADD.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R8,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R8,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#8]
VLDR            S0, [R6]
VLDR            S1, [R8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6]
VLDR            S0, [R6,#4]
VLDR            S1, [R8,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#4]
VLDR            S0, [R6,#8]
VLDR            S1, [R8,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#8]
VLDR            S0, [R5,#0xC8]
VMUL.F32        S1, S0, S18
VLDR            S0, [R5,#0xC4]
VMLS.F32        S1, S17, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x70+var_64]
VLDR            S1, [R5,#0xC4]
VLDR            S0, [R5,#0xC8]
VNMUL.F32       S1, S18, S1
VMLS.F32        S1, S17, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x70+var_54]
B               loc_27D0A4
DCD off_6CDF98
DCFS 1.0
DCFS 0.0
DCD 0x2AAAAAAB
DCD dword_6CDFC0
DCFS 40.744
LDR             R0, [R4,#0x6FC]
BL              sub_27D6E4
LDRB            R0, [R4,#0xF6]
CMP             R0, #0
BEQ             loc_27D0F8
ADD             R0, R4, #0x490
MOV             R1, SP
VLDR            S0, [R0,#0xC]
LDR             R0, [R4,#0x4BC]
STR             R0, [SP,#0x70+var_68]
ADD             R0, R7, #0x400
VSTR            S16, [SP,#0x70+var_6C]
VLDR            S1, [R0,#0x264]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x70+var_70]
VLDR            S0, [R7,#0xD8]
VLDR            S1, [R0,#0x268]
ADD             R0, R4, #4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x70+var_68]
BL              sub_14E984
ADD             SP, SP, #0x40 ; '@'
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R10,LR}
NOP
PUSH            {R4-R9,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRB            R0, [R0,#0x56E]
CMP             R0, #1
BNE             loc_27D2CC
ADD             R0, R4, #0x400
BL              sub_5F1964
CMP             R0, #0
BNE             loc_27D2CC
LDR             R8, =off_6CDF98
LDR             R9, =0x2AAAAAAB
LDR             R0, [R8]
LDR             R1, [R0,#0x124]
LDR             R0, [R0,#0xC4]
ADD             R5, R1, #0x400
ADD             R1, R1, #0x400
ADD             R1, R1, #0x98
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
VLDM            R1, {S0-S1}
ADD             R1, SP, #0x30+var_2C
STR             R2, [SP,#0x30+var_30]
STR             R0, [SP,#0x30+var_2C]
LDR             R2, [R0,#4]
VSUB.F32        S17, S0, S1
STR             R2, [SP,#0x30+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x30+var_30]
ADD             R0, R0, #0x580
LDM             R0, {R0,R1}
SUB             R0, R1, R0
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0x30+var_28]
UXTH            R6, R0
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_27D1C8
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_27D1C8
BL              sub_273C74
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_2C]
VMOV            S0, R6
MOV             R7, #0
STR             R1, [R0,#4]
STR             R0, [R1]
LDRB            R1, [R4,#0x708]
VCVT.F32.U32    S1, S0
LDR             R0, [R8]
VMOV            S0, R1
VLDR            S16, [R5,#0x9C]
LDR             R0, [R0,#0xC4]
VCVT.F32.U32    S2, S0
LDR             R0, [R0,#0x1C]
ADD             R0, R0, #0x580
LDM             R0, {R0,R1}
SUB             R1, R1, R0
VDIV.F32        S0, S2, S1
SMULL           R2, R1, R9, R1
VMLA.F32        S16, S17, S0
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
UXTH            R1, R1
CMP             R1, #1
MOVLS           R6, #0
BLS             loc_27D294
LDR             R2, [R0,#0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_2C]
STR             R2, [SP,#0x30+var_30]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x30+var_2C
STR             R2, [SP,#0x30+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x30+var_30]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R4
LDR             R1, [SP,#0x30+var_28]
MOVEQ           R6, #1
MOVNE           R6, #0
CMP             R1, R0
BNE             loc_27D288
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_27D288
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x30+var_2C]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R5,#0xA0]
CMP             R6, #0
VMUL.F32        S1, S0, S16
BEQ             loc_27D2BC
ADD             R0, R4, #0x400
VLDR            S0, =0.0
BL              sub_5A12F8
NOP
NOP
B               loc_27D2C8
VLDR            S0, =1.0
ADD             R0, R4, #0x400
BL              sub_5A12F8
STRB            R7, [R4,#0x56E]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
