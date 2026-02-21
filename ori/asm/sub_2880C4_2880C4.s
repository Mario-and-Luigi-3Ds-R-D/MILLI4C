PUSH            {R0,R4-R11,LR}
MOV             R1, #1
VPUSH           {D8-D14}
SUB             SP, SP, #0xA0
LDR             R0, [SP,#0x100+var_28]
ADD             R4, R0, #0x400
LDR             R0, [R0,#0x688]
ADD             R4, R4, #0x288
ADD             R9, R0, #4
LDR             R0, [SP,#0x100+var_28]
ADD             R0, R0, #0x10
BL              sub_14C450
LDR             R1, [SP,#0x100+var_28]
LDR             R0, [R9,#0x6C]
STRB            R0, [R1,#0x106]
LDR             R0, [SP,#0x100+var_28]
ADD             R1, R9, #0x70 ; 'p'
ADD             R0, R0, #0x10
BL              sub_14EA04
LDR             R0, [SP,#0x100+var_28]
MOV             R1, R9
ADD             R0, R0, #0x10
BL              sub_14E984
LDR             R0, [SP,#0x100+var_28]
MOV             R2, #1
ADD             R1, R0, #0x400
STR             R1, [SP,#0x100+var_98]
ADD             R5, R0, #0x400
STRB            R2, [R0,#0x102]
LDR             R0, [SP,#0x100+var_28]
ADD             R5, R5, #0x1CC
STRB            R2, [R0,#0x5D5]
VLDR            S1, [R1,#0x1A4]
LDR             R1, [SP,#0x100+var_98]
VLDR            S19, [R9,#0x1C]
VLDR            S16, [R9,#0x20]
VLDR            S0, [R1,#0x1A8]
VDIV.F32        S2, S1, S19
LDR             R1, [R4]
LDR             R1, [R1,#0x28]
VCVT.U32.F32    S1, S2
STR             R1, [SP,#0x100+var_94]
VDIV.F32        S3, S0, S16
VMOV            R1, S1
VSTR            S1, [SP,#0x100+var_9C]
VCVT.U32.F32    S0, S3
VMOV            R2, S0
VSTR            S0, [SP,#0x100+var_C4]
MUL             R2, R1, R2
VMOV            R1, S0
STR             R1, [R0,#0x5CC]
LDR             R1, [SP,#0x100+var_94]
MUL             R0, R2, R1
STR             R0, [SP,#0x100+var_8C]
BL              sub_4635D8
LDR             R10, [R0,#4]
VLDR            S28, [R0]
VLDR            S27, [R0,#8]
BL              sub_4635D8
MOV             R1, R0
LDR             R0, [R4]
VLDR            S26, [R1,#8]
LDR             R2, [SP,#0x100+var_28]
MOV             R6, #1
VLDM            R1, {S23-S24}
LDR             R1, [R5]
VLDR            S25, [R0,#0xF8]
VLDR            S22, [R0,#0xFC]
VLDR            S21, [R0,#0x100]
VLDR            S20, [R0,#0x104]
LDR             R0, =off_6CE970
SUB             R4, R1, #1
LDR             R1, [SP,#0x100+var_98]
ADD             R5, R2, #0x530
LDR             R0, [R0]
ADD             R11, R5, #0x34 ; '4'
VLDR            S18, [R1,#0x1A4]
VLDR            S17, [R1,#0x1A8]
VSTR            S18, [R5,#0x40]
ADD             R8, R0, #0x68 ; 'h'
MOV             R1, #2
VSTR            S17, [R5,#0x44]
STR             R1, [R2,#0x560]
ADD             R0, R4, #1
MOV             R2, #0
MOV             R7, R0,LSL#1
STM             R11, {R0,R7}
MOV             R0, #0x2C ; ','
MOV             R1, R8
MUL             R0, R7, R0
MOV             R3, R2
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_28824C
LDR             R1, =sub_28E76C
MOV             R3, R7
MOV             R2, #0x2C ; ','
BLX             sub_1002F4
ADD             R1, R7, R7,LSL#1
ADD             R1, R1, R7,LSL#3
VMOV            S0, R4
ADD             R1, R0, R1,LSL#2
STM             R5, {R0,R1,R7}
ADD             R1, R5, #0x5C ; '\'
STR             R7, [R5,#0xC]
VSTR            S25, [R5,#0x4C]
VSTR            S22, [R5,#0x50]
VCVT.F32.U32    S0, S0
VSTR            S21, [R5,#0x54]
VSTR            S20, [R5,#0x58]
VSTR            S26, [R5,#0x64]
VSTR            S28, [R5,#0x68]
VLDR            S22, =0.5
VLDR            S21, =0.0
MOV             R3, #0
VSTM            R1, {S23-S24}
VMUL.F32        S1, S17, S22
VLDR            S23, =1.0
VDIV.F32        S5, S17, S0
STR             R10, [R5,#0x6C]
VSTR            S27, [R5,#0x70]
LDR             R0, [R5,#0x34]
VLDR            S0, =-0.5
CMP             R0, #0
VMULHI.F32      S4, S18, S0
VDIV.F32        S3, S18, S23
BLS             loc_288324
VMOV.F32        S0, S4
LDR             R0, [R5,#0x30]
MOV             R2, #0
CMP             R0, #0
BLS             loc_288310
MLA             R0, R3, R0, R2
LDR             R1, [R5]
VMOV.F32        S2, S0
VMOV.F32        S20, S21
ADD             R12, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#3
VADD.F32        S0, S0, S3
ADD             R0, R1, R0,LSL#2
ADD             R2, R2, #1
VSTR            S2, [R0]
VSTR            S1, [R0,#4]
VSTR            S20, [R0,#8]
LDR             R0, [R5,#0x30]
CMP             R0, R2
BHI             loc_2882D4
VSUB.F32        S1, S1, S5
LDR             R0, [R5,#0x34]
ADD             R3, R3, #1
CMP             R0, R3
BHI             loc_2882C0
SUBS            R12, R0, #0
LDRHI           R1, [R5,#0x30]
MOV             R7, #0
MOV             R0, R7
BLS             loc_288390
CMP             R1, #0
MOVNE           R2, R1
MOVNE           R3, #0
BNE             loc_288354
B               loc_288384
CMP             R3, R6
BCS             loc_288358
ADD             R7, R7, #1
CMP             R0, R4
ADDCC           R7, R7, #1
CMP             R3, R6
CMPCC           R0, R4
ADDCC           R7, R7, #1
CMP             R3, #0
CMPNE           R4, R0
ADDHI           R7, R7, #1
SUBS            R2, R2, #1
ADD             R3, R3, #1
BNE             loc_28834C
ADD             R0, R0, #1
CMP             R12, R0
BHI             loc_288338
ADD             R0, R7, R7,LSL#1
MOV             R2, #0
MOV             R1, R8
MOV             R3, R2
MOV             R0, R0,LSL#2
STR             R7, [R5,#0x3C]
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_2883CC
LDR             R1, =sub_28E554
MOV             R3, R7
MOV             R2, #0xC
BLX             sub_1002F4
MOV             R2, R0
ADD             R0, R7, R7,LSL#1
STR             R2, [R5,#0x10]
ADD             R0, R2, R0,LSL#2
STR             R7, [R5,#0x18]
STR             R0, [R5,#0x14]
STR             R7, [R5,#0x1C]
LDR             R0, [R5,#0x34]
MOV             R1, #0
CMP             R0, #0
BLS             loc_288618
LDR             R0, [R5,#0x30]
CMP             R0, #0
MOV             R0, #0
BHI             loc_288410
B               loc_288608
CMP             R0, R6
BCS             loc_288480
LDR             R3, [R5,#0x30]
ADD             R8, R0, #1
LDR             R12, [R5]
MOV             R11, R2
MLA             R7, R1, R3, R0
MLA             R3, R1, R3, R8
ADD             R2, R2, #0xC
ADD             R8, R7, R7,LSL#1
ADD             R7, R8, R7,LSL#3
ADD             R10, R3, R3,LSL#1
ADD             R8, R10, R3,LSL#3
ADD             R3, R12, R7,LSL#2
ADD             R12, R12, R8,LSL#2
STM             R11, {R3,R12}
VLDR            S0, [R3]
VLDR            S5, [R12]
VLDR            S2, [R3,#4]
VLDR            S3, [R12,#4]
VSUB.F32        S0, S0, S5
VLDR            S1, [R3,#8]
VSUB.F32        S2, S2, S3
VLDR            S4, [R12,#8]
VSUB.F32        S1, S1, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VSTR            S1, [R11,#8]
CMP             R1, R4
BCS             loc_2884F8
LDR             R3, [R5,#0x30]
ADD             R8, R1, #1
LDR             R12, [R5]
MOV             R11, R2
MLA             R7, R1, R3, R0
MLA             R3, R8, R3, R0
ADD             R2, R2, #0xC
ADD             R8, R7, R7,LSL#1
ADD             R7, R8, R7,LSL#3
ADD             R10, R3, R3,LSL#1
ADD             R8, R10, R3,LSL#3
ADD             R3, R12, R7,LSL#2
ADD             R12, R12, R8,LSL#2
STM             R11, {R3,R12}
VLDR            S0, [R3]
VLDR            S5, [R12]
VLDR            S1, [R3,#4]
VLDR            S2, [R12,#4]
VSUB.F32        S0, S0, S5
VLDR            S3, [R3,#8]
VSUB.F32        S1, S1, S2
VLDR            S4, [R12,#8]
VSUB.F32        S2, S3, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S1, S0
VSTR            S1, [R11,#8]
CMP             R0, R6
CMPCC           R1, R4
BCS             loc_288578
LDR             R3, [R5,#0x30]
ADD             R10, R1, #1
ADD             R8, R0, #1
LDR             R12, [R5]
MLA             R7, R1, R3, R0
MLA             R3, R10, R3, R8
MOV             R11, R2
ADD             R8, R7, R7,LSL#1
ADD             R7, R8, R7,LSL#3
ADD             R10, R3, R3,LSL#1
ADD             R8, R10, R3,LSL#3
ADD             R3, R12, R7,LSL#2
ADD             R12, R12, R8,LSL#2
STM             R11, {R3,R12}
ADD             R2, R2, #0xC
VLDR            S0, [R3]
VLDR            S5, [R12]
VLDR            S2, [R3,#4]
VLDR            S3, [R12,#4]
VSUB.F32        S0, S0, S5
VLDR            S1, [R3,#8]
VSUB.F32        S2, S2, S3
VLDR            S4, [R12,#8]
VSUB.F32        S1, S1, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VSTR            S1, [R11,#8]
CMP             R0, #0
CMPNE           R4, R1
BLS             loc_2885F8
LDR             R3, [R5,#0x30]
ADD             R10, R1, #1
SUB             R8, R0, #1
LDR             R12, [R5]
MLA             R7, R1, R3, R0
MLA             R3, R10, R3, R8
MOV             R11, R2
ADD             R8, R7, R7,LSL#1
ADD             R7, R8, R7,LSL#3
ADD             R10, R3, R3,LSL#1
ADD             R8, R10, R3,LSL#3
ADD             R3, R12, R7,LSL#2
ADD             R12, R12, R8,LSL#2
STM             R11, {R3,R12}
ADD             R2, R2, #0xC
VLDR            S1, [R3]
VLDR            S5, [R12]
VLDR            S2, [R3,#4]
VLDR            S0, [R12,#4]
VSUB.F32        S1, S1, S5
VLDR            S3, [R3,#8]
VSUB.F32        S2, S2, S0
VLDR            S4, [R12,#8]
VSUB.F32        S0, S3, S4
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VSTR            S0, [R11,#8]
LDR             R3, [R5,#0x30]
ADD             R0, R0, #1
CMP             R3, R0
BHI             loc_288408
LDR             R0, [R5,#0x34]
ADD             R1, R1, #1
CMP             R0, R1
BHI             loc_2883F4
NOP
B               loc_28863C
DCD off_6CE970
DCD sub_28E76C
DCFS 1.0
DCFS 0.5
DCFS -0.5
DCFS 0.0
DCD sub_28E554
LDR             R0, [SP,#0x100+var_28]
MOV             R1, #0
LDR             R0, [R0,#0x564]
CMP             R0, #0
BLS             loc_2886B8
LDR             R0, [SP,#0x100+var_28]
LDR             R0, [R0,#0x560]
CMP             R0, #0
MOV             R0, #0
BLS             loc_2886A4
VMOV            S0, R1
LDR             R2, [SP,#0x100+var_28]
LDR             R3, [R2,#0x560]
VCVT.F32.U32    S0, S0
LDR             R2, [R2,#0x530]
MLA             R3, R1, R3, R0
ADD             R0, R0, #1
ADD             R12, R3, R3,LSL#1
ADD             R3, R12, R3,LSL#3
VMUL.F32        S0, S16, S0
ADD             R2, R2, R3,LSL#2
VSTR            S0, [R2,#4]
LDR             R2, [SP,#0x100+var_28]
LDR             R2, [R2,#0x560]
CMP             R2, R0
BHI             loc_288664
LDR             R0, [SP,#0x100+var_28]
ADD             R1, R1, #1
LDR             R0, [R0,#0x564]
CMP             R0, R1
BHI             loc_288650
LDR             R0, [SP,#0x100+var_28]
MOV             R4, #1
LDR             R5, =off_6CE970
LDR             R2, [R0,#0x530]!
LDR             R3, [R0,#0x30]
MOV             R0, #0
MLA             R1, R0, R3, R0
ADD             R0, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#3
ADD             R0, R2, R0,LSL#2
STRB            R4, [R0,#0x24]
LDR             R0, [SP,#0x100+var_28]
LDR             R2, [SP,#0x100+var_28]
LDR             R1, [R0,#0x560]
MOV             R0, #0
LDR             R2, [R2,#0x530]
MLA             R0, R0, R1, R4
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
MOV             R1, #0
ADD             R0, R2, R0,LSL#2
STRB            R4, [R0,#0x24]
LDR             R0, [SP,#0x100+var_28]
LDR             R2, [R0,#0x530]!
ADD             R0, R0, #0x30 ; '0'
LDM             R0, {R3,R12}
SUB             R0, R12, #1
MLA             R1, R0, R3, R1
ADD             R0, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#3
ADD             R0, R2, R0,LSL#2
LDR             R1, [R0,#4]
LDR             R0, [SP,#0x100+var_98]
STR             R1, [R0,#0x1D0]
LDR             R0, [R5]
LDR             R1, [SP,#0x100+var_28]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R1,#0x690]
LDR             R0, [SP,#0x100+var_28]
LDR             R1, [SP,#0x100+var_8C]
ADD             R0, R0, #0x690
BL              sub_625908
LDR             R0, [SP,#0x100+var_98]
VLDR            S1, [SP,#0x100+var_94]
VMOV.F32        S18, S23
VCVT.F32.U32    S3, S1
VLDR            S2, [R0,#0x1AC]
VLDR            S0, [R0,#0x1A4]
LDR             R0, [SP,#0x100+var_28]
VDIV.F32        S17, S19, S0
LDR             R0, [R0,#0x688]
ADD             R0, R0, #0x114
VMUL.F32        S16, S17, S22
VMLS.F32        S18, S17, S22
VDIV.F32        S1, S2, S3
VLDM            R0, {S2-S3}
LDR             R0, [SP,#0x100+var_94]
CMP             R0, #0
VNEG.F32        S19, S1
MOV             R0, #0
STR             R0, [SP,#0x100+var_98]
VDIV.F32        S1, S2, S0
VMOV.F32        S25, S1
VDIV.F32        S24, S3, S0
BLS             loc_288EE4
LDR             R0, [SP,#0x100+var_28]
ADD             R11, R0, #0x400
ADD             R0, SP, #0x100+var_D4
ADD             R11, R11, #0x29C
STR             R0, [SP,#0x100+var_CC]
VLDR            S0, [SP,#0x100+var_98]
VSTR            S0, [SP,#0x100+var_A4]
LDR             R0, [SP,#0x100+var_9C]
CMP             R0, #0
MOV             R0, #0
STR             R0, [SP,#0x100+var_88]
BLS             loc_288ECC
STR             R0, [SP,#0x100+var_AC]
LDR             R0, [SP,#0x100+var_C4]
MOV             R8, #0
CMP             R0, #0
VMOVHI.F32      S20, S22
BLS             loc_288EB4
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VLDR            S2, [SP,#0x100+var_98]
VMOV            S1, R8
LDR             R0, [R9,#0x130]
VCVT.F32.U32    S3, S2
VLDR            S0, [SP,#0x100+var_88]
VMOV            R1, S2
MUL             R0, R0, R8
VCVT.F32.U32    S2, S1
VCVT.F32.U32    S4, S0
VMOV.F32        S0, S16
STR             R0, [SP,#0x100+var_A0]
TST             R1, #1
VMUL.F32        S1, S3, S19
VLDR            S3, [R9,#0x134]
LDR             R0, =dword_6D1F40
VMLA.F32        S0, S4, S17
VMLA.F32        S1, S2, S3
VSTR            S1, [SP,#0x100+var_B8]
VSTR            S0, [SP,#0x100+var_B0]
VMLANE.F32      S0, S17, S20
VMOV.F32        S1, S24
VSTRNE          S0, [SP,#0x100+var_B0]
VMOV.F32        S0, S25
BL              sub_47EAA4
VLDR            S1, [SP,#0x100+var_B0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_B0]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S18
BGT             loc_288898
VMOV.F32        S1, S16
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S16
MOV             R3, #0
ADD             R4, SP, #0x100+var_D8
MOV             R2, R3
VSTR            S0, [SP,#0x100+var_B0]
VSUB.F32        S0, S0, S20
LDR             R0, [SP,#0x100+var_A0]
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R9,#0x13C]
VNEGCC.F32      S0, S0
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VCVT.S32.F32    S1, S1
VMOV            R1, S1
ADD             R0, R0, R1
STR             R0, [SP,#0x100+var_A0]
VLDR            S1, [R9,#0x138]
VLDR            S2, [SP,#0x100+var_B8]
LDR             R0, =off_6CE970
VMLA.F32        S2, S0, S1
VMOV            S0, R8
VSTR            S2, [SP,#0x100+var_B8]
VLDR            S1, [SP,#0x100+var_C4]
VCVT.F32.U32    S2, S0
VCVT.F32.U32    S0, S1
VDIV.F32        S1, S2, S0
VSTR            S1, [SP,#0x100+var_B4]
STR             R8, [SP,#0x100+var_A8]
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x454
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_288960
LDR             R7, [SP,#0x100+var_28]
ADD             R0, R0, #0x1C
ADD             R5, R7, #0x400
ADD             R5, R5, #0x284
LDM             R5, {R5,R6}
BL              sub_14F198
SUB             R0, R0, #0x1C
ADD             R2, R0, #0x400
ADD             R2, R2, #0x44 ; 'D'
STR             R5, [R0,#0x44C]
STM             R2, {R6,R7}
MOV             R1, #0
STRB            R1, [R0,#0x450]
STRB            R1, [R0,#0x410]
STRB            R1, [R0,#0x411]
STR             R0, [SP,#0x100+var_D8]
ADD             R0, R4, #4
STR             R0, [SP,#0x100+var_D0]
STR             R0, [SP,#0x100+var_D4]
LDR             R0, [SP,#0x100+var_D8]
ADD             R1, SP, #0x100+var_B8
BL              sub_289F18
LDR             R0, [SP,#0x100+var_28]
LDR             R1, [R11]
LDR             R2, [R11,#8]
ADD             R0, R0, #0x690
STR             R0, [SP,#0x100+var_68]
LDR             R0, [R11,#4]
LDR             R4, =0x2AAAAAAB
SUB             R1, R0, R1
SMULL           R3, R1, R4, R1
MOV             R3, R1,ASR#1
SUB             R3, R3, R1,ASR#31
ADD             R1, R3, #1
CMP             R1, R2
BLS             loc_288A18
LDR             R1, [SP,#0x100+var_68]
MOV             R2, #1
ADD             R5, R3, #1
ADD             R6, SP, #0x100+var_F0
LDR             R0, [R1,#4]
VLDR            S0, [R1]
MOV             R1, #0
CMP             R0, #1
MOVLS           R0, R2
VSTR            S0, [SP,#0x100+var_F0]
STRD            R0, R1, [SP,#0x100+var_EC]
STR             R1, [SP,#0x100+var_E0]
LDR             R0, [SP,#0x100+var_68]
STR             R1, [SP,#0x100+var_E4]
STR             R1, [SP,#0x100+var_DC]
LDR             R0, [R0,#0x14]
MOV             R1, R0,LSL#1
CMP             R1, R5
MOVCC           R1, R5
MOV             R0, R6
BL              sub_625908
CMP             R0, #0
NOP
BNE             loc_288A6C
B               loc_288A54
CMP             R0, #0
MOV             R1, R11
BEQ             loc_288A44
LDR             R3, [SP,#0x100+var_D8]
ADD             R2, SP, #0x100+var_D4
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x100+var_D0]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x100+var_D0]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R11,#4]
B               loc_288E6C
MOV             R1, R5
MOV             R0, R6
BL              sub_625908
CMP             R0, #0
NOP
BEQ             loc_288B14
LDR             R0, [SP,#0x100+var_68]
ADD             R0, R0, #0xC
LDM             R0, {R7,R10}
LDR             R0, =0x2AAAAAAB
SUB             R1, R10, R7
SMULL           R0, R1, R0, R1
LDR             R0, [SP,#0x100+var_DC]
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, R0
ADD             R2, SP, #0x100+var_E4
BHI             loc_288CA8
LDR             R5, [SP,#0x100+var_E0]
LDR             R6, [SP,#0x100+var_E4]
CMP             R7, R10
STR             R2, [SP,#0x100+var_C0]
BNE             loc_288C00
CMP             R6, R5
BEQ             loc_288B04
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_288AF0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_288AF0
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_288AB8
LDR             R0, [SP,#0x100+var_C0]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_288CA8
ADD             R10, R6, #0xC
LDR             R5, [SP,#0x100+var_E0]
LDR             R6, [SP,#0x100+var_E4]
MOV             R7, #0
STR             R7, [SP,#0x100+var_DC]
CMP             R6, R5
BEQ             loc_288B7C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_288B68
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_288B68
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_288B30
STR             R7, [R10]
STR             R7, [R10,#4]
LDR             R0, [SP,#0x100+var_E8]
STR             R7, [SP,#0x100+var_E8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x100+var_E0]
LDR             R6, [SP,#0x100+var_E4]
CMP             R6, R5
BEQ             loc_288BF0
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_288BDC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_288BDC
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_288BA4
LDR             R0, [SP,#0x100+var_E8]
CMP             R0, #0
BEQ             loc_288E6C
B               loc_288E64
CMP             R6, R5
BEQ             loc_288C54
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_288C40
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_288C40
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_288C08
LDR             R0, [SP,#0x100+var_C0]
CMP             R7, R10
LDR             R0, [R0]
BEQ             loc_288CA0
MOVS            R2, R0
BEQ             loc_288C90
VLDR            S0, [R7]
ADD             R1, R7, #4
VSTR            S0, [R2]
STR             R1, [R0,#4]
LDR             R3, [R7,#8]
ADD             R2, R0, #4
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R7,#8]
ADD             R7, R7, #0xC
CMP             R7, R10
ADD             R0, R0, #0xC
BNE             loc_288C64
LDR             R1, [SP,#0x100+var_C0]
STR             R0, [R1,#4]
ADD             R4, SP, #0x100+var_E0
LDR             R2, [SP,#0x100+var_E4]
LDM             R4, {R1,R3}
ADD             R5, SP, #0x100+var_F0
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, R3
BHI             loc_288D10
LDR             R0, [SP,#0x100+var_E0]
CMP             R0, #0
BEQ             loc_288D04
LDR             R2, [SP,#0x100+var_D8]
ADD             R1, SP, #0x100+var_D4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x100+var_D0]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x100+var_D0]
LDR             R0, [SP,#0x100+var_E0]
ADD             R0, R0, #0xC
STR             R0, [SP,#0x100+var_E0]
LDR             R1, [SP,#0x100+var_68]
VLDR            S0, [SP,#0x100+var_F0]
VLDR            S2, [SP,#0x100+var_EC]
ADD             R0, R1, #0xC
VLDR            S3, [R1]
VLDR            S1, [R1,#4]
VSTR            S3, [SP,#0x100+var_F0]
VSTR            S1, [SP,#0x100+var_EC]
VSTR            S0, [R1]
VSTR            S2, [R1,#4]
VLDR            S1, [R1,#8]
VLDR            S0, [SP,#0x100+var_E8]
VSTR            S1, [SP,#0x100+var_E8]
ADD             R3, R1, #0x10
ADD             R12, R1, #0x14
VSTR            S0, [R1,#8]
LDR             R1, [R1,#0xC]
VLDR            S0, [SP,#0x100+var_E4]
MOV             R4, #0
STR             R1, [SP,#0x100+var_E4]
VSTR            S0, [R0]
VLDR            S0, [R3]
VLDR            S1, [SP,#0x100+var_E0]
VSTR            S0, [SP,#0x100+var_E0]
VSTR            S1, [R3]
VLDR            S0, [SP,#0x100+var_DC]
LDR             R0, [R12]
VSTR            S0, [R12]
LDR             R6, [SP,#0x100+var_E0]
LDR             R7, [SP,#0x100+var_E4]
ADD             R10, R5, #0xC
STR             R4, [SP,#0x100+var_DC]
CMP             R7, R6
BEQ             loc_288DE4
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_288DD0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_288DD0
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_288D98
STR             R4, [R10]
STR             R4, [R10,#4]
LDR             R0, [SP,#0x100+var_E8]
STR             R4, [SP,#0x100+var_E8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x100+var_E0]
LDR             R6, [SP,#0x100+var_E4]
CMP             R6, R5
BEQ             loc_288E58
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_288E44
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_288E44
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_288E0C
LDR             R0, [SP,#0x100+var_E8]
CMP             R0, #0
BEQ             loc_288E6C
NOP
BL              sub_2FF5D4
LDRD            R0, R1, [SP,#0x100+var_D0]
CMP             R0, R1
BNE             loc_288E98
LDR             R0, [SP,#0x100+var_D8]
CMP             R0, #0
BEQ             loc_288E98
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x100+var_D4]
ADD             R8, R8, #1
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x100+var_C4]
CMP             R8, R0
BCC             loc_288804
LDR             R0, [SP,#0x100+var_88]
ADD             R0, R0, #1
STR             R0, [SP,#0x100+var_88]
LDR             R1, [SP,#0x100+var_9C]
CMP             R0, R1
BCC             loc_2887EC
LDR             R0, [SP,#0x100+var_98]
LDR             R1, [SP,#0x100+var_94]
ADD             R0, R0, #1
CMP             R0, R1
STR             R0, [SP,#0x100+var_98]
BCC             loc_2887D0
ADD             SP, SP, #0xA0
VPOP            {D8-D14}
POP             {R3-R11,PC}
