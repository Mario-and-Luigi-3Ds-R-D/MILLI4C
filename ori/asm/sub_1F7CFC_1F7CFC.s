PUSH            {R0,R1,R4-R11,LR}
MOV             R0, #0
MOV             R2, #1
LDR             R5, =off_6CDD80
VLDR            S9, =0.5
VPUSH           {D8-D15}
SUB             SP, SP, #0xD4
ADD             R3, SP, #0x140+var_2C
LDR             R1, [SP,#0x140+var_2C]
VLDR            S18, =80.0
VLDR            S31, =0.0
ADD             R1, R1, #0x28 ; '('
STM             R1, {R0,R2}
STR             R0, [R1,#8]
STR             R0, [R1,#0xC]
STR             R0, [R1,#0x10]
STR             R0, [R1,#0x14]
LDR             R0, [R5]
LDR             R4, [R0,#8]
LDR             R2, [R4,#0x13C]
STR             R2, [SP,#0x140+var_130]
LDR             R1, [R4,#0x144]
VMOV            S19, R2
VMOV            S17, R2
VMOV            S10, R1
STR             R1, [SP,#0x140+var_130]
STR             R1, [SP,#0x140+var_13C]
VMLA.F32        S19, S10, S9
VMOV            S10, R1
LDR             R1, [R4,#0x140]
VMOV            S16, R1
STR             R1, [SP,#0x140+var_13C]
LDM             R3, {R1,R2}
VMLS.F32        S17, S10, S9
VLDR            S9, =2.0
STRB            R2, [R1,#0x40]
LDR             R1, [R4,#0xA0]
STR             R1, [SP,#0x140+var_134]
LDR             R0, [R0,#8]
VMOV            S10, R1
LDR             R1, [R0,#0x4C]
VMOV            S24, R1
STR             R1, [SP,#0x140+var_12C]
LDR             R1, [R0,#0x50]
VMUL.F32        S23, S10, S9
VMOV            S30, R1
STR             R1, [SP,#0x140+var_134]
LDR             R1, [R0,#0x54]
STR             R1, [SP,#0x140+var_12C]
STR             R1, [SP,#0x140+var_B8]
LDR             R0, [R0,#0x58]
VMOV            S29, R0
STR             R0, [SP,#0x140+var_12C]
LDR             R0, [SP,#0x140+var_28]
CMP             R0, #0
BEQ             loc_1F7DF0
CMP             R0, #1
BEQ             loc_1F7F5C
CMP             R0, #2
BNE             loc_1F802C
B               loc_1F7E84
LDR             R0, [R4,#0x144]
STR             R0, [SP,#0x140+var_138]
LDR             R0, [R4,#0x54]
VLDR            S1, [SP,#0x140+var_138]
VMOV            S2, R0
STR             R0, [SP,#0x140+var_138]
VDIV.F32        S0, S1, S2
BL              sub_5F6048
VLDR            S1, =2.0
VMOV.F32        S25, S31
VMOV.F32        S4, S16
VADD.F32        S0, S0, S1
VMOV.F32        S5, S17
VLDR            S1, =1.0
VMOV.F32        S6, S19
VMOV.F32        S27, S25
VSUB.F32        S8, S4, S18
VMOV.F32        S21, S4
VMOV.F32        S26, S5
VMOV.F32        S3, S25
VMOV.F32        S28, S25
VCVT.U32.F32    S0, S0
VMOV.F32        S2, S25
VMOV.F32        S22, S25
VMOV.F32        S5, S17
VMOV.F32        S7, S23
VMOV.F32        S4, S16
VSTR            S0, [SP,#0x140+var_128]
LDR             R0, [SP,#0x140+var_2C]
VLDR            S0, =-1.0
VSTR            S25, [R0]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S20, S0
VSTR            S25, [R0,#4]
LDR             R0, [SP,#0x140+var_2C]
VSTR            S1, [R0,#8]
B               loc_1F802C
LDR             R0, [R4,#0x148]
STR             R0, [SP,#0x140+var_138]
LDR             R0, [R4,#0x4C]
VLDR            S1, [SP,#0x140+var_138]
VMOV            S2, R0
STR             R0, [SP,#0x140+var_138]
VDIV.F32        S0, S1, S2
BL              sub_5F6048
VCVT.U32.F32    S4, S0
VMOV.F32        S25, S31
VMOV.F32        S27, S16
VLDR            S2, =1.0
VADD.F32        S6, S19, S18
VMOV.F32        S28, S19
VMOV.F32        S3, S2
VMOV.F32        S26, S25
VSUB.F32        S8, S27, S18
VSTR            S4, [SP,#0x140+var_128]
LDR             R0, [SP,#0x140+var_2C]
VLDR            S4, =-1.0
VMOV.F32        S1, S25
VMOV.F32        S21, S25
VSTR            S4, [R0]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S0, S25
VMOV.F32        S22, S2
VMOV.F32        S20, S25
VSTR            S25, [R0,#4]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S5, S19
VMOV.F32        S7, S23
VSTR            S25, [R0,#8]
LDR             R0, [R4,#0x50]
VLDR            S4, [SP,#0x140+var_128]
VMOV            S9, R0
STR             R0, [SP,#0x140+var_134]
LDR             R0, [R5]
VCVT.F32.U32    S4, S4
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x54]
VMOV            S24, R1
STR             R1, [SP,#0x140+var_13C]
LDR             R1, [R0,#0x58]
VMLA.F32        S16, S9, S4
VMOV            S30, R1
STR             R1, [SP,#0x140+var_13C]
LDR             R1, [R0,#0x4C]
STR             R1, [SP,#0x140+var_13C]
STR             R1, [SP,#0x140+var_B8]
LDR             R0, [R0,#0x50]
VMOV.F32        S4, S16
VMOV            S29, R0
STR             R0, [SP,#0x140+var_140]
B               loc_1F802C
LDR             R0, [R4,#0x148]
STR             R0, [SP,#0x140+var_138]
LDR             R0, [R4,#0x4C]
VLDR            S1, [SP,#0x140+var_138]
VMOV            S2, R0
STR             R0, [SP,#0x140+var_138]
VDIV.F32        S0, S1, S2
BL              sub_5F6048
VCVT.U32.F32    S4, S0
VLDR            S3, =1.0
VMOV.F32        S25, S31
VMOV.F32        S27, S16
VSUB.F32        S8, S16, S18
VSUB.F32        S5, S17, S18
VLDR            S22, =-1.0
VMOV.F32        S28, S17
VMOV.F32        S26, S25
VSTR            S4, [SP,#0x140+var_128]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S1, S25
VMOV.F32        S21, S25
VMOV.F32        S2, S22
VSTR            S3, [R0]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S0, S25
VMOV.F32        S20, S25
VMOV.F32        S7, S23
VSTR            S25, [R0,#4]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S6, S17
VSTR            S25, [R0,#8]
VLDR            S4, [SP,#0x140+var_128]
LDR             R0, [R4,#0x50]
VCVT.F32.U32    S9, S4
VMOV            S4, R0
STR             R0, [SP,#0x140+var_140]
LDR             R0, [R5]
LDR             R0, [R0,#8]
VMLA.F32        S16, S4, S9
LDR             R1, [R0,#0x54]
VMOV            S24, R1
STR             R1, [SP,#0x140+var_13C]
LDR             R1, [R0,#0x58]
VMOV            S30, R1
STR             R1, [SP,#0x140+var_13C]
LDR             R1, [R0,#0x4C]
VMOV.F32        S4, S16
STR             R1, [SP,#0x140+var_13C]
STR             R1, [SP,#0x140+var_B8]
LDR             R0, [R0,#0x50]
VMOV            S29, R0
STR             R0, [SP,#0x140+var_140]
LDR             R0, [SP,#0x140+var_2C]
VMOV.F32        S9, S25
ADD             R1, R0, #0x18
VSTR            S5, [R0,#0xC]
VMUL.F32        S5, S1, S1
VSTR            S9, [R0,#0x10]
VSTR            S8, [R0,#0x14]
VSTR            S4, [R0,#0x20]
VSTM            R1, {S6-S7}
VLDR            S4, [SP,#0x140+var_28]
VLDR            S6, =1.0
VSTR            S4, [SP,#0x140+var_E8]
VMOV.F32        S4, S25
VMLA.F32        S5, S4, S4
VMLA.F32        S5, S3, S3
VSQRT.F32       S7, S5
VDIV.F32        S5, S6, S7
VMUL.F32        S1, S1, S5
VMUL.F32        S4, S4, S5
VMUL.F32        S3, S3, S5
VSTR            S1, [SP,#0x140+var_CC]
VSTR            S4, [SP,#0x140+var_C8]
VSTR            S3, [SP,#0x140+var_C0]
VMUL.F32        S3, S2, S2
VMOV.F32        S1, S25
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S3, S6, S4
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S3
VSTR            S2, [SP,#0x140+var_D0]
VSTR            S1, [SP,#0x140+var_C4]
VSTR            S0, [SP,#0x140+var_DC]
LDR             R0, [SP,#0x140+var_28]
CMP             R0, #0
LDR             R0, =off_6CDD80
B               loc_1F80E4
DCD off_6CDD80
DCFS 80.0
DCFS 0.5
DCFS 2.0
DCFS 0.0
DCFS 1.0
DCFS -1.0
LDR             R0, [R0]
VLDR            S23, =0.0
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x48]
STR             R1, [SP,#0x140+var_E0]
LDREQ           R0, [R0,#0x29C]
LDRNE           R0, [R0,#0x298]
LDR             R1, [SP,#0x140+var_2C]
VMOV            S16, R0
STR             R0, [SP,#0x140+var_140]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R1,#0x28]
LDR             R0, [SP,#0x140+var_128]
LDR             R1, [SP,#0x140+var_E0]
MUL             R1, R0, R1
LDR             R0, [SP,#0x140+var_2C]
ADD             R0, R0, #0x28 ; '('
BL              sub_6244CC
LDR             R0, [SP,#0x140+var_128]
CMP             R0, #0
MOV             R0, #0
STR             R0, [SP,#0x140+var_94]
BLS             loc_1F8938
VSUB.F32        S1, S30, S24
VMOV.F32        S0, S25
VSTR            S28, [SP,#0x140+var_8C]
ADD             R0, SP, #0x140+var_120
VMUL.F32        S28, S20, S16
VMOV.F32        S31, S21
VSTR            S0, [SP,#0x140+var_B4]
STR             R0, [SP,#0x140+var_84]
LDR             R0, [SP,#0x140+var_2C]
VSTR            S1, [SP,#0x140+var_80]
VLDR            S1, [SP,#0x140+var_B8]
VMUL.F32        S0, S0, S16
ADD             R8, R0, #0x34 ; '4'
VSUB.F32        S1, S29, S1
VMOV.F32        S29, S0
VSTR            S1, [SP,#0x140+var_7C]
VMUL.F32        S1, S22, S16
VMOV.F32        S30, S1
VLDR            S18, =0.0
LDR             R0, [SP,#0x140+var_E0]
MOV             R11, #0
VMOV.F32        S16, S18
CMP             R0, #0
BLS             loc_1F88F4
VLDR            S1, [SP,#0x140+var_C8]
VLDR            S2, [SP,#0x140+var_C0]
VLDR            S0, [SP,#0x140+var_CC]
VMUL.F32        S1, S1, S23
VMUL.F32        S3, S2, S23
VMUL.F32        S0, S0, S23
VLDR            S5, [SP,#0x140+var_8C]
LDR             R0, [SP,#0x140+var_28]
CMP             R0, #1
VADD.F32        S2, S25, S1
VADD.F32        S1, S27, S3
VLDR            S3, [SP,#0x140+var_D0]
VADD.F32        S0, S26, S0
VMUL.F32        S4, S3, S16
VLDR            S3, [SP,#0x140+var_C4]
VMUL.F32        S6, S3, S16
VLDR            S3, [SP,#0x140+var_DC]
VMUL.F32        S3, S3, S16
VADD.F32        S5, S5, S4
VLDR            S4, [SP,#0x140+var_B4]
VADD.F32        S4, S4, S6
VMOV.F32        S6, S31
VADD.F32        S17, S0, S5
VADD.F32        S3, S6, S3
VLDREQ          S0, =14.0
VADD.F32        S22, S2, S4
VSUBEQ.F32      S17, S17, S0
VADD.F32        S19, S1, S3
BEQ             loc_1F8228
CMP             R0, #2
VLDREQ          S0, =14.0
VADDEQ.F32      S17, S17, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R6, =off_6CDD80
MOV             R4, R0
LDR             R0, [R6]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x5A0]
STR             R1, [SP,#0x140+var_130]
LDR             R0, [R0,#0x59C]
VMOV            S1, R1
STR             R0, [SP,#0x140+var_134]
LDR             R0, =dword_6D1F40
VLDR            S0, [SP,#0x140+var_134]
BL              sub_47EAA4
VMOV.F32        S20, S0
MOV             R0, R4
BL              sub_464278
VMUL.F32        S21, S0, S20
MOV             R0, R4
BL              sub_4642E0
VMUL.F32        S0, S0, S20
VADD.F32        S2, S22, S18
VADD.F32        S1, S17, S21
ADD             R0, SP, #0x140+var_100
ADD             R1, SP, #0x140+var_F4
VADD.F32        S0, S19, S0
VSTR            S0, [SP,#0x140+var_F8]
VMOV.F32        S0, S30
VSTM            R0, {S1-S2}
VMOV.F32        S1, S29
VADD.F32        S2, S19, S28
LDR             R0, =dword_6D1F40
VADD.F32        S0, S17, S0
VADD.F32        S1, S22, S1
VSTM            R1, {S0-S2}
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R3, #0
MOV             R0, R0,LSR#16
STRB            R0, [SP,#0x140+var_E4]
LDR             R0, =off_6CE970
ADD             R5, SP, #0x140+var_124
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x438
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_1F839C
ADD             R9, SP, #0x140+var_100
BL              sub_14F198
MOV             R7, #1
STRB            R7, [R0,#0x434]
MOV             R4, R0
MOV             R1, R7
STRB            R7, [R0,#0x41A]
BL              sub_14C450
LDR             R0, [R6]
MOV             R2, #0
LDR             R1, [R0,#0xF3C]
MOV             R0, R4
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C430
MOV             R2, #0x1D
MOV             R1, R9
ADD             R0, R4, #0x3F8
BL              sub_127EB8
LDR             R0, [SP,#0x140+var_E8]
CMP             R0, #0
BEQ             loc_1F838C
CMP             R0, #1
BEQ             loc_1F8368
CMP             R0, #2
BNE             loc_1F839C
B               loc_1F837C
MOV             R0, #0xD
MOV             R1, #0
STRB            R0, [R4,#0x418]
STRB            R1, [R4,#0x419]
B               loc_1F839C
MOV             R0, #0xD
STRB            R0, [R4,#0x418]
STRB            R7, [R4,#0x419]
B               loc_1F839C
MOV             R0, #5
MOV             R1, #0
STRB            R0, [R4,#0x418]
STRB            R1, [R4,#0x419]
ADD             R0, R5, #4
STR             R0, [SP,#0x140+var_11C]
STR             R0, [SP,#0x140+var_120]
STR             R4, [SP,#0x140+var_124]
LDR             R2, [R8]
LDR             R1, [R8,#4]
LDR             R4, =0x2AAAAAAB
LDR             R0, [SP,#0x140+var_2C]
SUB             R2, R1, R2
LDR             R3, [R8,#8]
SMULL           R12, R2, R4, R2
ADD             R9, R0, #0x28 ; '('
MOV             R0, R8
MOV             R12, R2,ASR#1
SUB             R2, R12, R2,ASR#31
ADD             R12, R2, #1
CMP             R12, R3
BLS             loc_1F8444
LDR             R0, [R9,#4]
VLDR            S0, [R9]
MOV             R2, #0
VSTR            S0, [SP,#0x140+var_118]
CMP             R0, #1
MOV             R1, #1
MOVLS           R0, R1
STR             R0, [SP,#0x140+var_114]
STR             R2, [SP,#0x140+var_110]
STR             R2, [SP,#0x140+var_10C]
STR             R2, [SP,#0x140+var_108]
STR             R2, [SP,#0x140+var_104]
LDR             R0, [R9,#0x14]
MOV             R5, R12
ADD             R6, SP, #0x140+var_118
MOV             R1, R0,LSL#1
CMP             R1, R5
MOVCC           R1, R5
MOV             R0, R6
BL              sub_6244CC
CMP             R0, #0
NOP
BNE             loc_1F8494
B               loc_1F847C
CMP             R1, #0
BEQ             loc_1F846C
LDR             R3, [SP,#0x140+var_124]
ADD             R2, SP, #0x140+var_120
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0x140+var_11C]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0x140+var_11C]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R8,#4]
B               loc_1F8884
MOV             R1, R5
MOV             R0, R6
BL              sub_6244CC
CMP             R0, #0
NOP
BEQ             loc_1F8548
ADD             R7, R9, #0xC
LDR             R0, =0x2AAAAAAB
LDM             R7, {R7,R10}
SUB             R1, R10, R7
SMULL           R0, R1, R0, R1
LDR             R0, [SP,#0x140+var_104]
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, R0
ADD             R2, SP, #0x140+var_10C
BHI             loc_1F86D0
LDR             R5, [SP,#0x140+var_108]
LDR             R6, [SP,#0x140+var_10C]
CMP             R7, R10
STR             R2, [SP,#0x140+var_138]
BNE             loc_1F862C
CMP             R6, R5
BEQ             loc_1F8524
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F8510
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F8510
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F84DC
LDR             R0, [SP,#0x140+var_138]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_1F86D0
DCD off_6CE970
DCFS 14.0
DCD dword_6D1F40
DCD 0x438
DCD 0x2AAAAAAB
ADD             R9, R6, #0xC
LDR             R5, [SP,#0x140+var_108]
LDR             R6, [SP,#0x140+var_10C]
MOV             R7, #0
STR             R7, [SP,#0x140+var_104]
CMP             R6, R5
BEQ             loc_1F85AC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F8598
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F8598
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F8564
STR             R7, [R9]
STR             R7, [R9,#4]
LDR             R0, [SP,#0x140+var_110]
STR             R7, [SP,#0x140+var_110]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x140+var_108]
LDR             R6, [SP,#0x140+var_10C]
CMP             R6, R5
BEQ             loc_1F861C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F8608
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F8608
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F85D4
LDR             R0, [SP,#0x140+var_110]
CMP             R0, #0
BEQ             loc_1F8884
B               loc_1F887C
CMP             R6, R5
BEQ             loc_1F867C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F8668
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F8668
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F8634
LDR             R0, [SP,#0x140+var_138]
CMP             R7, R10
LDR             R0, [R0]
BEQ             loc_1F86C8
MOVS            R2, R0
BEQ             loc_1F86B8
LDR             R1, [R7]
STR             R1, [R2]
ADD             R1, R7, #4
STR             R1, [R0,#4]
LDR             R3, [R7,#8]
ADD             R2, R0, #4
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R7,#8]
ADD             R7, R7, #0xC
CMP             R7, R10
ADD             R0, R0, #0xC
BNE             loc_1F868C
LDR             R1, [SP,#0x140+var_138]
STR             R0, [R1,#4]
ADD             R4, SP, #0x140+var_108
LDR             R2, [SP,#0x140+var_10C]
LDM             R4, {R1,R3}
ADD             R12, SP, #0x140+var_118
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, R3
BHI             loc_1F8738
LDR             R0, [SP,#0x140+var_108]
CMP             R0, #0
BEQ             loc_1F872C
LDR             R2, [SP,#0x140+var_124]
ADD             R1, SP, #0x140+var_120
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x140+var_11C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x140+var_11C]
LDR             R0, [SP,#0x140+var_108]
ADD             R0, R0, #0xC
STR             R0, [SP,#0x140+var_108]
LDM             R9, {R2,R6}
ADD             R0, R9, #0xC
LDR             R5, [SP,#0x140+var_118]
VLDR            S0, [SP,#0x140+var_114]
STR             R2, [SP,#0x140+var_118]
STR             R6, [SP,#0x140+var_114]
STR             R5, [R9]
VSTR            S0, [R9,#4]
LDR             R5, [R9,#8]
VLDR            S0, [SP,#0x140+var_110]
ADD             R2, R9, #0x10
STR             R5, [SP,#0x140+var_110]
VSTR            S0, [R9,#8]
LDR             R1, [R0]
VLDR            S0, [SP,#0x140+var_10C]
ADD             R3, R9, #0x14
STR             R1, [SP,#0x140+var_10C]
VSTR            S0, [R0]
LDR             R0, [R2]
VLDR            S0, [SP,#0x140+var_108]
MOV             R4, #0
STR             R0, [SP,#0x140+var_108]
VSTR            S0, [R2]
VLDR            S0, [SP,#0x140+var_104]
LDR             R0, [R3]
VSTR            S0, [R3]
LDR             R6, [SP,#0x140+var_108]
LDR             R7, [SP,#0x140+var_10C]
ADD             R9, R12, #0xC
STR             R4, [SP,#0x140+var_104]
CMP             R7, R6
BEQ             loc_1F8800
SUB             R6, R6, #0xC
ADD             R0, R6, #4
LDR             R1, [R6,#8]
MOV             R5, R6
CMP             R1, R0
BNE             loc_1F87EC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1F87EC
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F87B8
STR             R4, [R9]
STR             R4, [R9,#4]
LDR             R0, [SP,#0x140+var_110]
STR             R4, [SP,#0x140+var_110]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x140+var_108]
LDR             R6, [SP,#0x140+var_10C]
CMP             R6, R5
BEQ             loc_1F8870
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F885C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F885C
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F8828
LDR             R0, [SP,#0x140+var_110]
CMP             R0, #0
BEQ             loc_1F8884
NOP
BL              sub_2FF5D4
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
LDR             R0, [SP,#0x140+var_11C]
LDR             R1, [SP,#0x140+var_84]
VCVT.F32.U32    S0, S0
CMP             R0, R1
VMUL.F32        S1, S0, S1
VLDR            S0, [SP,#0x140+var_80]
VMUL.F32        S0, S1, S0
VADD.F32        S0, S24, S0
VADD.F32        S16, S0, S16
BNE             loc_1F88D8
LDR             R0, [SP,#0x140+var_124]
CMP             R0, #0
BEQ             loc_1F88D8
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x140+var_120]
ADD             R11, R11, #1
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x140+var_E0]
CMP             R11, R0
BCC             loc_1F81A8
LDR             R0, =dword_6D1F40
VLDR            S16, [SP,#0x140+var_B8]
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
LDR             R0, [SP,#0x140+var_94]
LDR             R1, [SP,#0x140+var_128]
ADD             R0, R0, #1
VCVT.F32.U32    S0, S0
CMP             R0, R1
VMUL.F32        S1, S0, S1
VLDR            S0, [SP,#0x140+var_7C]
STR             R0, [SP,#0x140+var_94]
VMUL.F32        S0, S1, S0
VADD.F32        S0, S16, S0
VADD.F32        S23, S0, S23
BCC             loc_1F8190
LDR             R0, [SP,#0x140+var_2C]
LDR             R6, [R0,#0x34]!
LDR             R1, [R0,#4]
CMP             R1, R6
BEQ             loc_1F8AD0
LDR             R7, =off_6CDD80
VLDR            S18, =0.0
VLDR            S19, =1.0
VLDR            S20, =0.000015259
MOV             R9, #5
ADD             R10, SP, #0x140+var_E0
ADD             R8, SP, #0x140+var_138
LDR             R4, [R6]
STRB            R9, [R4,#0x41A]
LDR             R0, [R7]
ADD             R1, R0, #0xF90
LDR             R5, [R0,#8]
MOV             R0, R4
BL              sub_14E984
LDR             R0, [R5,#0x554]
STR             R0, [SP,#0x140+var_12C]
LDR             R0, [R5,#0x550]
STR             R0, [SP,#0x140+var_13C]
LDR             R0, =dword_6D1F40
VLDR            S1, [SP,#0x140+var_12C]
VLDR            S0, [SP,#0x140+var_13C]
BL              sub_47EAA4
LDR             R0, [R5,#0x54C]
ADD             R1, SP, #0x140+var_12C
VMOV.F32        S17, S0
STR             R0, [SP,#0x140+var_128]
LDR             R0, [R5,#0x548]
STR             R0, [SP,#0x140+var_12C]
LDR             R0, =dword_6D1F40
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S16, S0
VLDR            S0, [R4,#0x3F8]
VLDR            S3, [R4,#0x24]
ADD             R5, R4, #0x400
VLDR            S1, [R4,#0x2C]
VLDR            S2, [R5]
VSUB.F32        S0, S0, S3
ADD             R0, SP, #0x140+var_E0
VSUB.F32        S1, S2, S1
VMOV.F32        S2, S17
MOV             R2, R10
MOV             R1, #1
VSTR            S0, [SP,#0x140+var_138]
VSTR            S18, [SP,#0x140+var_134]
VSTR            S1, [SP,#0x140+var_130]
VMOV.F32        S1, S16
VSTM            R0, {S18-S19}
ADD             R0, R4, #0x1DC
VSTR            S18, [SP,#0x140+var_D8]
VLDR            S0, [R4,#0x28]
VNEG.F32        S0, S0
BL              sub_5A28C4
VMOV.F32        S0, S16
MOV             R2, R8
MOV             R1, #0
ADD             R0, R4, #0x1DC
BL              sub_5A2B20
LDR             R0, [R7]
MOV             R2, #0
LDR             R1, [R0,#0xF3C]
MOV             R0, R4
BL              sub_14E6E0
LDRB            R0, [R4,#0x418]
LDRB            R1, [R4,#0x414]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
ADD             R0, R0, #4
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
LDRB            R0, [R5,#0x19]
STRB            R0, [R4,#0xF3]
MOV             R0, R4
BL              sub_5C5724
VMOV            S16, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VCVT.F32.S32    S1, S16
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R1, R0
MOV             R0, R4
BL              sub_14F01C
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [SP,#0x140+var_2C]
ADD             R6, R6, #0xC
LDR             R0, [R0,#0x38]
CMP             R0, R6
BNE             loc_1F8968
LDR             R1, [SP,#0x140+var_2C]
MOV             R0, #1
STRB            R0, [R1,#0x24]
LDR             R0, [SP,#0x140+var_2C]
ADD             SP, SP, #0xD4
VPOP            {D8-D15}
ADD             SP, SP, #8
POP             {R4-R11,PC}
