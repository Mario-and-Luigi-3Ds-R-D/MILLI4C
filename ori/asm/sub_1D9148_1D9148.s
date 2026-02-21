PUSH            {R0,R4-R11,LR}
LDR             R0, =off_6CE970
VLDR            S2, =0.0039062
VPUSH           {D8-D11}
SUB             SP, SP, #0x40
LDR             R0, [R0]
ADD             R1, R0, #0x190000
LDR             R0, [SP,#0x88+var_28]
ADD             R1, R1, #0xDE00
VLDR            S0, [R0,#0x98]
LDRSH           R0, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMUL.F32        S20, S0, S2
VLDR            S0, =256.0
VMUL.F32        S0, S20, S0
VCVT.S32.F32    S21, S0
VMOV.F32        S0, S20
VMOV            R0, S21
SXTH            R4, R0
LDR             R0, [SP,#0x88+var_28]
ADD             R0, R0, #0x104
BL              sub_5A2484
LDM             R0, {R1-R3}
VMOV.F32        S0, S20
LDR             R0, [SP,#0x88+var_28]
ADD             R0, R0, #0x24 ; '$'
STM             R0, {R1-R3}
LDR             R0, [SP,#0x88+var_28]
ADD             R0, R0, #0x15C
BL              sub_4E625C
LDR             R1, [R0]
LDR             R0, [SP,#0x88+var_28]
STR             R1, [R0,#0x9C]
LDR             R0, [SP,#0x88+var_28]
MOV             R1, R4
ADD             R0, R0, #0x194
BL              sub_123CE8
LDR             R0, [SP,#0x88+var_28]
ADD             R0, R0, #0x194
BL              sub_4857C8
LDR             R0, [SP,#0x88+var_28]
MOV             R1, R4
ADD             R0, R0, #0x1A0
BL              sub_123CE8
LDR             R0, [SP,#0x88+var_28]
ADD             R0, R0, #0x1A0
BL              sub_4857C8
MOV             R0, #0
STR             R0, [SP,#0x88+var_54]
VLDR            S18, =0.5
VLDR            S17, =1.0
VLDR            S22, =1.4142
VLDR            S19, =0.0
ADD             R0, SP, #0x88+var_80
STR             R0, [SP,#0x88+var_4C]
LDR             R1, [SP,#0x88+var_54]
LDR             R0, [SP,#0x88+var_28]
VMOV.F32        S16, S20
MOV             R5, #3
ADD             R2, R1, R1,LSL#3
LDR             R0, [R0,#0x1B0]
ADD             R1, R2, R1,LSL#4
ADD             R11, R0, R1,LSL#4
LDR             R0, [R11,#4]
BICS            R0, R5, R0
BNE             loc_1D92B4
LDR             R0, [R11,#0x58]
LDR             R4, [R11,#0x54]
VMOV            R2, S21
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
SXTH            R6, R2
ADD             R0, R4, R0,LSL#5
CMP             R0, R4
BEQ             loc_1D92B4
MOV             R1, R6
ADD             R0, R4, #0x10
BL              sub_123CE8
MOV             R0, R4
NOP
BL              sub_592F14
LDR             R0, [R11,#0x58]
LDR             R1, [R11,#0x54]
ADD             R4, R4, #0x160
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#5
CMP             R0, R4
BNE             loc_1D927C
ADD             R2, R11, #0x168
STR             R2, [SP,#0x88+var_50]
LDR             R0, [R11,#0x16C]
LDR             R1, [R11,#0x168]
CMP             R0, R1
BCS             loc_1D9300
LDR             R12, [R2,#8]!
LDR             R3, [R2,#4]
LDR             R2, =0x4EC4EC4F
SUB             R1, R3, R1
SUB             R3, R0, R12
SMULL           R1, R0, R2, R1
SMULL           R2, R1, R2, R3
MOV             R3, R0,ASR#4
SUB             R3, R3, R0,ASR#31
MOV             R2, R1,ASR#4
SUB             R0, R2, R1,ASR#31
ADD             R0, R0, R3
B               loc_1D9314
LDR             R2, =0x4EC4EC4F
SUB             R0, R0, R1
SMULL           R1, R0, R2, R0
MOV             R1, R0,ASR#4
SUB             R0, R1, R0,ASR#31
CMP             R0, #2
BCC             loc_1D9AC8
ADD             R0, R11, #0x64 ; 'd'
VLDM            R0, {S0-S1}
VMLA.F32        S0, S1, S16
VMOV            R0, S0
VSTR            S0, [R11,#0x64]
CMP             R0, #0x3F800000
BLT             loc_1D9AC8
LDR             R1, [R11,#0x180]
ADD             R0, R11, #0x180
CMP             R1, #0
LDRNE           R0, [R0,#4]
BLXNE           R1
VLDR            S0, [R11,#0x64]
VSUB.F32        S0, S0, S17
VSTR            S0, [R11,#0x64]
LDR             R0, [SP,#0x88+var_50]
LDR             R1, [R0]
LDR             R2, [R0,#0xC]
LDR             R3, [R0,#8]
ADD             R1, R1, #0x34 ; '4'
CMP             R2, R1
BHI             loc_1D9398
LDR             R12, =0x4EC4EC4F
SUB             R2, R3, R2
SMULL           R3, R2, R12, R2
MOV             R3, R2,ASR#4
SUB             R2, R3, R2,ASR#31
ADD             R3, R2, R2,LSL#2
ADD             R2, R3, R2,LSL#3
ADD             R1, R1, R2,LSL#2
B               loc_1D93C0
CMP             R3, R1
BLS             loc_1D93C0
SUB             R3, R2, R3
LDR             R2, =0x4EC4EC4F
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#4
SUB             R2, R3, R2,ASR#31
ADD             R3, R2, R2,LSL#2
ADD             R2, R3, R2,LSL#3
ADD             R1, R1, R2,LSL#2
STR             R1, [R0]
LDR             R0, [R11,#0x168]
LDR             R1, [R11,#0x178]
LDR             R0, [R0]
CMP             R0, R1
BEQ             loc_1D9BA0
MOV             R5, R11
ADD             R0, R11, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BNE             loc_1D9ABC
LDR             R0, [R5,#0x168]
LDR             R8, [R5,#0x178]
LDR             R0, [R0]
CMP             R0, R8
BEQ             loc_1D9ABC
LDR             R0, [R5,#0x168]
LDR             R2, [R5,#0x60]
LDR             R0, [R0]
CMP             R8, R0
SUBHI           R1, R8, R0
SUBLS           R1, R0, R8
CMP             R2, R1
BCS             loc_1D9430
CMP             R0, R8
SUBCS           R8, R0, R2
ADDCC           R8, R2, R0
ADD             R0, SP, #0x88+var_84
CMP             R8, #0
MOV             R4, SP
STR             R0, [SP,#0x88+var_5C]
STR             R0, [SP,#0x88+var_58]
STR             R8, [SP,#0x88+var_88]
BEQ             loc_1D949C
LDR             R0, [R5,#4]
MOV             R6, #1
MOV             R0, R0,LSL#13
CMP             R6, R0,LSR#30
BNE             loc_1D94C0
LDR             R0, [R5,#0x17C]
ADD             R1, R0, #1
MOV             R0, R8
BL              sub_127F6C
NOP
NOP
B               loc_1D94DC
DCFS 0.0039062
DCD off_6CE970
DCFS 256.0
DCFS 0.5
DCFS 1.0
DCFS 1.4142
DCFS 0.0
DCD 0x4EC4EC4F
LDR             R1, [R5,#4]
MOV             R0, #3
BICS            R0, R0, R1,LSR#15
BEQ             loc_1D9534
MOV             R0, #0
STR             R0, [SP,#0x88+var_84]
LDR             R0, [SP,#0x88+var_4C]
STR             R0, [SP,#0x88+var_58]
B               loc_1D9534
MOV             R1, #2
CMP             R1, R0,LSR#30
MOV             R1, R8
BNE             loc_1D94DC
LDR             R0, [R5,#0x17C]
CMP             R1, R0
MOVHI           R1, R0
LDR             R0, =0xCCCCCCCD
MOV             R2, R1
ADD             R7, R4, #0x2C ; ','
UMULL           R3, R1, R0, R2
LDM             R7, {R7,R12}
MOV             R1, R1,LSR#3
RSB             R3, R1, #0
SUB             R7, R12, R7
ADD             R3, R3, R3,LSL#2
ADD             R7, R6, R7,ASR#2
ADD             R3, R2, R3,LSL#1
CMP             R7, #0xA
ADD             R2, R4, #4
BHI             loc_1D952C
CMP             R12, #0
ADD             R2, R2, #0x28 ; '('
STRNE           R3, [R12]
LDR             R3, [R2,#4]
ADD             R3, R3, #4
STR             R3, [R2,#4]
CMP             R1, #0
BNE             loc_1D94E0
ADD             R0, R4, #0x2C ; ','
LDR             R3, [R5,#0x5C]
LDM             R0, {R1,R6}
SUB             R2, R6, R1
MOV             R0, R2,ASR#2
CMP             R0, R3
BLS             loc_1D956C
CMP             R3, #0xA
ADD             R0, R4, #4
BHI             loc_1D95E0
ADD             R1, R1, R3,LSL#2
CMP             R3, R2,ASR#2
STR             R1, [R0,#0x2C]
B               loc_1D95E0
LDR             R0, [R5,#4]
MOV             R12, #1
MOV             R0, R0,LSL#15
CMP             R12, R0,LSR#30
BEQ             loc_1D9598
MOV             R12, #2
CMP             R12, R0,LSR#30
BNE             loc_1D95E0
LDR             R0, [R5,#0x17C]
CMP             R0, R8
BHI             loc_1D95E0
CMP             R3, #0xA
MOV             R0, #0
ADD             R12, R4, #4
BHI             loc_1D95E0
CMP             R3, R2,ASR#2
ADD             R2, R12, #0x28 ; '('
ADDLS           R0, R1, R3,LSL#2
STRLS           R0, [R2,#4]
BLS             loc_1D95E0
ADD             R1, R1, R3,LSL#2
CMP             R6, R1
BEQ             loc_1D95DC
CMP             R6, #0
STRNE           R0, [R6]
ADD             R6, R6, #4
CMP             R6, R1
BNE             loc_1D95C8
STR             R1, [R2,#4]
ADD             R1, R5, #0x16C
LDR             R3, [R5,#0x174]
LDM             R1, {R1,R12}
ADD             R0, R5, #0x168
LDR             R4, =0x4EC4EC4F
LDR             R2, [R5,#0x168]
SUB             R6, R3, R12
SMULL           R7, R6, R4, R6
CMP             R2, R1
MOV             R7, R6,ASR#4
SUB             R6, R7, R6,ASR#31
SUB             R6, R6, #1
BLS             loc_1D963C
SUB             R2, R3, R2
SUB             R3, R1, R12
SMULL           R12, R2, R4, R2
SMULL           R12, R3, R4, R3
MOV             R12, R2,ASR#4
SUB             R2, R12, R2,ASR#31
MOV             R7, R3,ASR#4
SUB             R3, R7, R3,ASR#31
ADD             R2, R2, R3
B               loc_1D964C
SUB             R2, R1, R2
SMULL           R2, R3, R4, R2
MOV             R2, R3,ASR#4
SUB             R2, R2, R3,ASR#31
CMP             R6, R2
BLS             loc_1D96FC
CMP             R1, #0
BEQ             loc_1D969C
LDR             R2, [SP,#0x88+var_88]
STR             R2, [R1],#4
STR             R1, [R1,#0x28]
STR             R1, [R1,#0x2C]
LDRD            R2, R3, [SP,#0x88+var_5C]
CMP             R2, R3
LDRNE           R12, [R1,#0x28]
BEQ             loc_1D969C
CMP             R12, #0
VLDRNE          S0, [R2]
ADD             R2, R2, #4
VSTRNE          S0, [R12]
CMP             R2, R3
ADD             R12, R12, #4
BNE             loc_1D967C
STR             R12, [R1,#0x2C]
LDR             R1, [R0,#4]
LDR             R2, [R0,#0xC]
LDR             R3, [R0,#8]
ADD             R1, R1, #0x34 ; '4'
CMP             R2, R1
BHI             loc_1D96D4
SUB             R2, R3, R2
SMULL           R3, R2, R4, R2
MOV             R3, R2,ASR#4
SUB             R2, R3, R2,ASR#31
ADD             R3, R2, R2,LSL#2
ADD             R2, R3, R2,LSL#3
ADD             R1, R1, R2,LSL#2
B               loc_1D96F8
CMP             R3, R1
BLS             loc_1D96F8
SUB             R2, R2, R3
SMULL           R3, R2, R4, R2
MOV             R3, R2,ASR#4
SUB             R2, R3, R2,ASR#31
ADD             R3, R2, R2,LSL#2
ADD             R2, R3, R2,LSL#3
ADD             R1, R1, R2,LSL#2
STR             R1, [R0,#4]
MOV             R9, #0
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R0, #0
ADDHI           R10, R5, #0x168
BLS             loc_1D9888
LDR             R0, [R5,#0x168]
ADD             R2, R9, R9,LSL#2
LDR             R1, [R10,#0xC]
ADD             R2, R2, R9,LSL#3
ADD             R0, R0, R2,LSL#2
CMP             R1, R0
BHI             loc_1D9758
LDR             R3, [R10,#8]
LDR             R2, =0x4EC4EC4F
SUB             R1, R3, R1
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
B               loc_1D9784
LDR             R2, [R10,#8]
CMP             R2, R0
BLS             loc_1D9784
SUB             R2, R1, R2
LDR             R1, =0x4EC4EC4F
SMULL           R2, R1, R1, R2
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
MOV             R4, #0
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R7, R0,ASR#2
CMP             R7, #0
VMOVHI.F32      S16, S19
BLS             loc_1D9870
LDR             R1, [R5,#0x5C]
LDR             R0, [R5,#0x54]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MLA             R1, R9, R1, R4
ADD             R2, R1, R1,LSL#1
ADD             R1, R2, R1,LSL#3
ADD             R6, R0, R1,LSL#5
ADD             R2, R6, #0x104
LDR             R1, [R6,#0x12C]
MOV             R8, R2
MOV             R0, R1,LSL#31
ORR             R0, R1, R0,LSR#28
AND             R1, R0, #2
ORR             R1, R0, R1,LSL#3
AND             R3, R1, #4
ADD             R0, R2, #8
ORR             R3, R1, R3,LSL#3
STR             R3, [R6,#0x12C]
VSTR            S1, [R6,#0x114]
VSTR            S1, [R6,#0x118]
VSTR            S1, [R6,#0x11C]
VSTR            S0, [R6,#0x104]
VSTR            S0, [R6,#0x108]
VSTM            R0, {S0-S1}
BL              sub_4635D8
VLDM            R0, {S0-S2}
ADD             R2, R8, #0x1C
ADD             R1, R6, #0x104
VSTM            R2, {S0-S1}
VSTR            S2, [R8,#0x24]
VLDR            S0, [R5,#0xC]
VLDR            S2, [R5,#0x18]
LDR             R0, [R5,#4]
VSUB.F32        S1, S0, S2
MOV             R0, R0,LSL#21
MOVS            R0, R0,LSR#30
BEQ             loc_1D98CC
CMP             R0, #1
BEQ             loc_1D9900
CMP             R0, #2
VMOVNE.F32      S0, S16
BEQ             loc_1D98DC
LDR             R0, [R1,#0x28]
ADD             R2, R1, #0x28 ; '('
ADD             R4, R4, #1
AND             R3, R0, #4
CMP             R4, R7
ORR             R0, R0, R3,LSL#3
STR             R0, [R2]
VSTR            S0, [R1,#0x1C]
BCC             loc_1D97A0
ADD             R9, R9, #1
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R9, R0
NOP
BCC             loc_1D9714
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BHI             loc_1D9918
ADD             R0, R5, #0x168
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R4, #0
BEQ             loc_1D9950
MOV             R1, #0
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R4, R0,ASR#2
B               loc_1D9950
VMOV            S2, R4
VCVT.F32.U32    S2, S2
VNMLA.F32       S0, S2, S1
B               loc_1D984C
VMOV            S3, R7
VMOV            S0, R4
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S4, S0
VMUL.F32        S3, S3, S1
VMLA.F32        S2, S3, S18
VMOV.F32        S0, S2
VMLS.F32        S0, S4, S1
B               loc_1D984C
SUB             R0, R7, R4
VMOV            S0, R0
VCVT.F32.U32    S3, S0
VMOV.F32        S0, S2
VNMLS.F32       S0, S3, S1
B               loc_1D984C
MOV             R1, #0
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R1, #1
MOV             R4, R0,ASR#2
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R0, R0,ASR#2
CMP             R0, R4
MOVHI           R4, R0
VLDR            S0, [R5,#0xC]
VLDR            S1, [R5,#0x18]
LDR             R1, [R5,#4]
VSUB.F32        S2, S0, S1
MOV             R0, R1,LSL#21
MOVS            R2, R0,LSR#30
BEQ             loc_1D99E8
CMP             R2, #1
BEQ             loc_1D9A1C
CMP             R2, #2
VMOVNE.F32      S3, S19
BEQ             loc_1D99F8
VLDR            S4, [R5,#0x24]
MOVS            R0, R0,LSR#30
SUB             R2, R4, #1
VADD.F32        S4, S0, S4
VADD.F32        S3, S4, S3
VSTR            S3, [R5,#0x3C]
BEQ             loc_1D9A34
CMP             R0, #1
VMOVEQ.F32      S0, S1
VNMLSEQ.F32     S0, S17, S2
BEQ             loc_1D99B8
CMP             R0, #2
VMOVNE.F32      S0, S19
BEQ             loc_1D9A44
VLDR            S2, [R5,#0x30]
MOV             R0, R1,LSL#19
VADD.F32        S1, S1, S2
MOVS            R0, R0,LSR#30
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x48]
BEQ             loc_1D9A68
CMP             R0, #1
BEQ             loc_1D9A94
CMP             R0, #2
BNE             loc_1D9ABC
B               loc_1D9A68
VNEG.F32        S3, S0
VMOV.F32        S4, S2
VMLS.F32        S3, S19, S4
B               loc_1D9980
VMOV            S3, R4
VCVT.F32.U32    S4, S3
VMOV.F32        S3, S2
VMUL.F32        S4, S4, S3
VMOV.F32        S3, S1
VMLA.F32        S3, S4, S18
VMOV.F32        S4, S2
VMLS.F32        S3, S19, S4
B               loc_1D9980
VMOV            S3, R4
VMOV.F32        S4, S2
VCVT.F32.U32    S5, S3
VMOV.F32        S3, S1
VNMLS.F32       S3, S5, S4
B               loc_1D9980
VMOV            S3, R2
VCVT.F32.U32    S3, S3
VNMLA.F32       S0, S3, S2
B               loc_1D99B8
VMOV            S3, R4
VMOV            S0, R2
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S4, S0
VMOV.F32        S0, S1
VMUL.F32        S3, S3, S2
VMLA.F32        S0, S3, S18
VMLS.F32        S0, S4, S2
B               loc_1D99B8
VLDR            S0, [R5,#0x10]
VLDR            S3, [R5,#0x28]
VLDR            S1, [R5,#0x1C]
VLDR            S2, [R5,#0x34]
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTR            S0, [R5,#0x40]
VSTR            S1, [R5,#0x4C]
VSTR            S19, [R5,#0x44]
VSTR            S19, [R5,#0x50]
B               loc_1D9ABC
VLDR            S1, [R5,#0x28]
VLDR            S3, [R5,#0x10]
VLDR            S0, [R5,#0x34]
VLDR            S2, [R5,#0x1C]
VMLA.F32        S1, S3, S22
VSTR            S19, [R5,#0x44]
VMLA.F32        S0, S2, S22
VSTR            S19, [R5,#0x50]
VSTR            S1, [R5,#0x40]
VSTR            S0, [R5,#0x4C]
LDR             R0, [R11,#0x64]
CMP             R0, #0x3F800000
BGE             loc_1D9338
LDR             R0, [SP,#0x88+var_54]
ADD             R0, R0, #1
CMP             R0, #4
STR             R0, [SP,#0x88+var_54]
BCC             loc_1D922C
LDR             R0, [SP,#0x88+var_28]
LDR             R8, =0x66666667
ADD             R7, R0, #0x100
LDR             R1, [R0,#0x100]
LDR             R4, [R0,#0x1B0]
MOV             R0, #0x148
LDRSH           R6, [R0,R1]
LDR             R0, [R4,#0x178]
SUBS            R5, R0, R6
BEQ             loc_1D9FDC
LDRB            R0, [R7,#0xAF]
CMP             R0, #0
BEQ             loc_1D9F80
ADD             R0, R4, #0xCC
BL              sub_6347DC
CMP             R0, #2
NOP
BCC             loc_1D9B54
LDR             R9, [R4,#0x178]
VSTR            S19, [R4,#0x64]
MOV             R1, #1
ADD             R0, R4, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R9
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
CMP             R5, #0
MOVGE           R0, R5
RSBLT           R0, R5, #0
CMP             R0, #0x14
MOVLT           R0, #1
BLT             loc_1D9B84
CMP             R5, #0
RSBLT           R5, R5, #0
SUB             R0, R5, #0xA
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#2
SUB             R0, R1, R0,ASR#31
STR             R0, [R4,#0x60]
MOV             R1, R6
MOV             R0, R4
BL              sub_5B8888
NOP
NOP
B               loc_1D9FB0
VMOV.F32        S23, S19
MOV             R9, #0
MOV             R5, R11
ADD             R0, R11, #0xCC
VSTR            S23, [R11,#0x64]
BL              sub_6347DC
CMP             R0, #0
VMOVHI.F32      S19, S23
ADDHI           R10, R5, #0x168
BLS             loc_1D9D3C
LDR             R0, [R5,#0x168]
ADD             R2, R9, R9,LSL#2
LDR             R1, [R10,#0xC]
ADD             R2, R2, R9,LSL#3
ADD             R0, R0, R2,LSL#2
CMP             R1, R0
BHI             loc_1D9C0C
LDR             R3, [R10,#8]
LDR             R2, =0x4EC4EC4F
SUB             R1, R3, R1
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
B               loc_1D9C38
LDR             R2, [R10,#8]
CMP             R2, R0
BLS             loc_1D9C38
SUB             R1, R1, R2
LDR             R2, =0x4EC4EC4F
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
MOV             R4, #0
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R7, R0,ASR#2
CMP             R7, #0
VMOVHI.F32      S16, S19
BLS             loc_1D9D24
LDR             R1, [R5,#0x5C]
LDR             R0, [R5,#0x54]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MLA             R1, R9, R1, R4
ADD             R2, R1, R1,LSL#1
ADD             R1, R2, R1,LSL#3
ADD             R6, R0, R1,LSL#5
ADD             R2, R6, #0x104
LDR             R1, [R6,#0x12C]
MOV             R8, R2
MOV             R0, R1,LSL#31
ORR             R0, R1, R0,LSR#28
AND             R1, R0, #2
ORR             R1, R0, R1,LSL#3
AND             R3, R1, #4
ADD             R0, R2, #8
ORR             R3, R1, R3,LSL#3
STR             R3, [R6,#0x12C]
VSTR            S1, [R6,#0x114]
VSTR            S1, [R6,#0x118]
VSTR            S1, [R6,#0x11C]
VSTR            S0, [R6,#0x104]
VSTR            S0, [R6,#0x108]
VSTM            R0, {S0-S1}
BL              sub_4635D8
VLDM            R0, {S0-S2}
ADD             R2, R8, #0x1C
ADD             R1, R6, #0x104
VSTM            R2, {S0-S1}
VSTR            S2, [R8,#0x24]
VLDR            S2, [R5,#0xC]
VLDR            S0, [R5,#0x18]
LDR             R0, [R5,#4]
VSUB.F32        S1, S2, S0
MOV             R0, R0,LSL#21
MOVS            R0, R0,LSR#30
BEQ             loc_1D9D80
CMP             R0, #1
BEQ             loc_1D9DB0
CMP             R0, #2
VMOVNE.F32      S0, S16
BEQ             loc_1D9D90
LDR             R0, [R1,#0x28]
ADD             R2, R1, #0x28 ; '('
ADD             R4, R4, #1
AND             R3, R0, #4
CMP             R4, R7
ORR             R0, R0, R3,LSL#3
STR             R0, [R2]
VSTR            S0, [R1,#0x1C]
BCC             loc_1D9C54
ADD             R9, R9, #1
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R9, R0
NOP
BCC             loc_1D9BC8
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BHI             loc_1D9DC4
ADD             R0, R5, #0x168
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R4, #0
BEQ             loc_1D9DFC
MOV             R1, #0
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R4, R0,ASR#2
B               loc_1D9DFC
VMOV            S3, R4
VNEG.F32        S0, S2
VCVT.F32.U32    S2, S3
B               loc_1D9DA8
VMOV            S2, R7
VMOV            S3, R4
VCVT.F32.U32    S4, S2
VCVT.F32.U32    S2, S3
VMUL.F32        S3, S4, S1
VMLA.F32        S0, S3, S18
VMLS.F32        S0, S2, S1
B               loc_1D9D00
SUB             R0, R7, R4
VMOV            S2, R0
VCVT.F32.U32    S2, S2
VNMLS.F32       S0, S2, S1
B               loc_1D9D00
MOV             R1, #0
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R1, #1
MOV             R6, R0,ASR#2
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R4, R0,ASR#2
CMP             R4, R6
MOVLS           R4, R6
VLDR            S0, [R5,#0xC]
VLDR            S1, [R5,#0x18]
LDR             R0, [R5,#4]
VSUB.F32        S2, S0, S1
MOV             R1, R0,LSL#21
MOVS            R2, R1,LSR#30
BEQ             loc_1D9E94
CMP             R2, #1
BEQ             loc_1D9EC8
CMP             R2, #2
VMOVNE.F32      S3, S23
BEQ             loc_1D9EA4
VLDR            S4, [R5,#0x24]
MOVS            R1, R1,LSR#30
SUB             R2, R4, #1
VADD.F32        S4, S0, S4
VADD.F32        S3, S4, S3
VSTR            S3, [R5,#0x3C]
BEQ             loc_1D9EE4
CMP             R1, #1
VMOVEQ.F32      S0, S1
VNMLSEQ.F32     S0, S17, S2
BEQ             loc_1D9E64
CMP             R1, #2
VMOVNE.F32      S0, S23
BEQ             loc_1D9EF4
VLDR            S2, [R5,#0x30]
MOV             R0, R0,LSL#19
VADD.F32        S1, S1, S2
MOVS            R0, R0,LSR#30
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x48]
BEQ             loc_1D9F18
CMP             R0, #1
BEQ             loc_1D9F44
CMP             R0, #2
BNE             loc_1D9F6C
B               loc_1D9F18
VNEG.F32        S3, S0
VMOV.F32        S4, S2
VMLS.F32        S3, S23, S4
B               loc_1D9E2C
VMOV            S3, R4
VCVT.F32.U32    S4, S3
VMOV.F32        S3, S2
VMUL.F32        S4, S4, S3
VMOV.F32        S3, S1
VMLA.F32        S3, S4, S18
VMOV.F32        S4, S2
VMLS.F32        S3, S23, S4
B               loc_1D9E2C
VMOV            S3, R4
VMOV.F32        S4, S1
VCVT.F32.U32    S5, S3
VMOV.F32        S3, S2
VNMLS.F32       S4, S5, S3
VMOV.F32        S3, S4
B               loc_1D9E2C
VMOV            S3, R2
VNEG.F32        S0, S0
VCVT.F32.U32    S3, S3
B               loc_1D9F10
VMOV            S0, R4
VMOV            S3, R2
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S3, S3
VMUL.F32        S4, S0, S2
VMOV.F32        S0, S1
VMLA.F32        S0, S4, S18
VMLS.F32        S0, S3, S2
B               loc_1D9E64
VLDR            S0, [R5,#0x10]
VLDR            S3, [R5,#0x28]
VLDR            S1, [R5,#0x1C]
VLDR            S2, [R5,#0x34]
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTR            S0, [R5,#0x40]
VSTR            S1, [R5,#0x4C]
VSTR            S23, [R5,#0x44]
VSTR            S23, [R5,#0x50]
B               loc_1D9F6C
VLDR            S0, [R5,#0x28]
VLDR            S1, [R5,#0x10]
VLDR            S2, [R5,#0x34]
VLDR            S3, [R5,#0x1C]
VMLA.F32        S0, S1, S22
VSTR            S23, [R5,#0x44]
VMLA.F32        S2, S3, S22
VSTR            S23, [R5,#0x50]
VSTR            S0, [R5,#0x40]
VSTR            S2, [R5,#0x4C]
LDR             R1, [R11,#0x188]
CMP             R1, #0
LDRNE           R0, [R11,#0x18C]
BLXNE           R1
B               loc_1D9AC8
STR             R6, [R4,#0x178]
VSTR            S19, [R4,#0x64]
MOV             R1, #1
ADD             R0, R4, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R6
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [SP,#0x88+var_28]
LDR             R0, [R0,#0x100]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
LDR             R1, [R4,#8]
CMP             R0, #0
MOVNE           R0, #0xA
BIC             R1, R1, #0xFF
ORR             R0, R0, R1
STR             R0, [R4,#8]
LDR             R0, [SP,#0x88+var_28]
MOV             R6, #0x14C
LDR             R1, [R0,#0x1B0]
LDR             R0, [R0,#0x100]
ADD             R4, R1, #0x190
LDRSH           R6, [R0,R6]
LDR             R0, [R1,#0x308]
SUBS            R5, R0, R6
BEQ             loc_1DA0F4
LDRB            R0, [R7,#0xAF]
CMP             R0, #0
BEQ             loc_1DA09C
ADD             R0, R4, #0xCC
BL              sub_6347DC
CMP             R0, #2
NOP
BCC             loc_1DA050
LDR             R7, [R4,#0x178]
VSTR            S19, [R4,#0x64]
MOV             R1, #1
ADD             R0, R4, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R7
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
CMP             R5, #0
MOVGE           R0, R5
RSBLT           R0, R5, #0
CMP             R0, #0x14
MOVLT           R0, #1
BLT             loc_1DA080
CMP             R5, #0
RSBLT           R5, R5, #0
SUB             R0, R5, #0xA
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#2
SUB             R0, R1, R0,ASR#31
STR             R0, [R4,#0x60]
MOV             R1, R6
MOV             R0, R4
BL              sub_5B8888
NOP
NOP
B               loc_1DA0CC
STR             R6, [R4,#0x178]
VSTR            S19, [R4,#0x64]
MOV             R1, #1
ADD             R0, R4, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R6
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [SP,#0x88+var_28]
LDR             R0, [R0,#0x100]
BL              sub_5EB2C0
LDR             R1, [R4,#8]
CMP             R0, #0
MOVNE           R0, #0x27 ; '''
MOVEQ           R0, #0x14
BIC             R1, R1, #0xFF
ORR             R0, R0, R1
STR             R0, [R4,#8]
LDR             R1, [SP,#0x88+var_28]
LDR             R0, [SP,#0x88+var_28]
LDR             R1, [R1,#0x100]
LDR             R0, [R0,#0x1B0]
ADD             R1, R1, #0x100
ADD             R0, R0, #0x320
LDRSH           R1, [R1,#0x46]
BL              sub_5B8888
LDR             R1, [SP,#0x88+var_28]
LDR             R0, [SP,#0x88+var_28]
LDR             R1, [R1,#0x100]
LDR             R0, [R0,#0x1B0]
ADD             R1, R1, #0x100
ADD             R0, R0, #0x4B0
LDRSH           R1, [R1,#0x4A]
BL              sub_5B8888
ADD             SP, SP, #0x40 ; '@'
VPOP            {D8-D11}
POP             {R3-R11,PC}
