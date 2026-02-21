PUSH            {R4-R11,LR}
MOV             R11, R0
LDR             R6, =off_6CEB30
VPUSH           {D8-D14}
SUB             SP, SP, #0x24
ADD             R4, SP, #0x80+var_74
STR             R1, [R0,#0x100]
LDRB            R0, [R1,#0x495]
LDRB            R5, [R11,#0x1AC]
CMP             R0, #1
BEQ             loc_1D76FC
BL              sub_48004C
CMP             R0, #0
BEQ             loc_1D7710
LDR             R2, [R6]; unk_6566D0
ADD             R3, SP, #0x80+var_74
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
B               loc_1D7740
LDR             R0, =dword_6E2378
LDRB            R1, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R1, #1
LDRBEQ          R0, [R0,#(byte_6E2384 - 0x6E2378)]
CMPEQ           R0, #0
BEQ             loc_1D76FC
LDR             R2, [R6]; unk_6566D0
ADD             R3, SP, #0x80+var_74
LDR             R0, [R2,#(dword_6566DC - 0x6566D0)]
LDR             R1, [R2,#(dword_6566E0 - 0x6566D0)]
LDR             R2, [R2,#(dword_6566E4 - 0x6566D0)]
STM             R3, {R0-R2}
CMP             R5, #0
BEQ             loc_1D7764
CMP             R5, #1
VLDREQ          S0, =-144.0
BEQ             loc_1D7760
CMP             R5, #2
VLDREQ          S0, =-104.0
BNE             loc_1D7764
VSTR            S0, [SP,#0x80+var_70]
LDR             R0, [R11]
MOV             R1, R4
LDR             R2, [R0,#0x20]
MOV             R0, R11
BLX             R2
LDR             R7, =off_6CE970
ADD             R4, R11, #0x1B0
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R7]
ADD             R8, R0, #8
LDR             R0, =0x648
MOV             R1, R8
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1D77D0
ADD             R0, R0, #8
MOV             R2, #4
SUB             R5, R0, #8
MOV             R1, #0x190
MOV             R3, R2
STM             R5, {R1,R2}
MOV             R2, R1
LDR             R1, =sub_5B8A80
BLX             sub_1002F4
MOV             R5, R0
LDR             R1, [R4,#8]
ADD             R0, R4, #4
MOV             R6, #4
CMP             R1, R0
BNE             loc_1D7878
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R1, =sub_5B8C24
BLNE            sub_3016C0
STR             R5, [R4],#0xC
MOV             R3, #1
STR             R6, [R4]
LDR             R0, [R11,#0x1B0]
MOV             R2, #3
MOV             R1, R8
BL              sub_5B81A0
LDR             R0, [R11,#0x1B0]
MOV             R3, #1
MOV             R2, #3
ADD             R0, R0, #0x190
MOV             R1, R8
BL              sub_5B81A0
LDR             R0, [R11,#0x1B0]
MOV             R3, #0
MOV             R2, #3
ADD             R0, R0, #0x320
MOV             R1, R8
BL              sub_5B81A0
LDR             R0, [R11,#0x1B0]
MOV             R3, #0
MOV             R2, #3
ADD             R0, R0, #0x4B0
MOV             R1, R8
BL              sub_5B81A0
LDR             R0, [R11,#0x1B0]
MOV             R4, #1
LDR             R1, [R0,#8]
MOV             R2, R1,LSL#16
MOV             R2, R2,LSR#24
CMP             R2, #1
BNE             loc_1D78A4
B               loc_1D7894
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_1D77F4
MOV             R2, R1,LSL#8
MOV             R2, R2,LSR#24
CMP             R2, #0xFF
BEQ             loc_1D78E8
BIC             R1, R1, #0xFF0000
BIC             R1, R1, #0xFF00
ORR             R1, R1, #0xFF0000
ORR             R1, R1, #0x100
STR             R1, [R0,#8]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_1D78DC
LDR             R1, [R0,#4]
MOV             R2, R1,LSL#19
CMP             R4, R2,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_1D78E0
MOV             R1, #0
NOP
BL              sub_5B7D3C
LDR             R0, [R11,#0x1B0]
ADD             R0, R0, #0x190
LDR             R1, [R0,#8]
MOV             R2, R1,LSL#16
MOV             R2, R2,LSR#24
CMP             R2, #2
BNE             loc_1D7914
MOV             R2, R1,LSL#8
MOV             R2, R2,LSR#24
CMP             R2, #0xFF
BEQ             loc_1D7958
BIC             R1, R1, #0xFF0000
BIC             R1, R1, #0xFF00
ORR             R1, R1, #0xFF0000
ORR             R1, R1, #0x200
STR             R1, [R0,#8]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_1D794C
LDR             R1, [R0,#4]
MOV             R2, R1,LSL#19
CMP             R4, R2,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_1D7950
MOV             R1, #0
NOP
BL              sub_5B7D3C
MOV             R0, #0
VLDR            S27, =0.3
VLDR            S20, =-6.0
VLDR            S21, =-11.0
VLDR            S22, =6.0
VLDR            S23, =9.0
VLDR            S28, =1.4142
VLDR            S19, =0.0
VLDR            S24, =-1.0
VLDR            S25, =-2.0
VLDR            S26, =2.0
STR             R0, [SP,#0x80+var_64]
LDR             R1, [R11,#0x1B0]
ADD             R2, R0, R0,LSL#3
ADD             R0, R2, R0,LSL#4
STR             R0, [SP,#0x80+var_68]
ADD             R4, R1, R0,LSL#4
LDR             R0, =off_6CE970
LDR             R1, =0xC00B
LDR             R0, [R0]
BL              sub_52FACC
MOV             R7, R0
LDR             R0, [R4,#0x58]
LDR             R5, [R4,#0x54]
MOV             R8, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_1D79F8
MOV             R0, R5
BL              sub_592EDC
LDR             R0, [R4,#0x58]
LDR             R2, [R4,#0x54]
ADD             R5, R5, #0x160
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R2, R0,LSL#5
CMP             R0, R5
BNE             loc_1D79D0
LDR             R1, [R4,#4]
CMP             R7, #0
BIC             R1, R1, #2
STR             R1, [R4,#4]
BEQ             loc_1D7ADC
LDR             R1, [R4,#0x58]
LDR             R5, [R4,#0x54]
MOV             R6, #1
ADD             R0, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
MOVNE           R10, #0x100
BEQ             loc_1D7AB8
MOV             R1, #1
MOV             R0, R7
BL              sub_5F0474
MOV             R9, R0
MOV             R0, R7
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x80+var_60]
MOV             R0, R7
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
ADD             R2, SP, #0x80+var_7C
MOV             R0, #0
STR             R8, [SP,#0x80+var_80]
STM             R2, {R0,R10}
MOV             R3, R9
LDR             R2, [SP,#0x80+var_60]
MOV             R0, R5
BL              sub_1137FC
LDR             R0, [R5,#4]
LDR             R2, [R4,#0x54]
ADD             R5, R5, #0x160
CMP             R0, #0
LDR             R0, [R4,#0x58]
MOVNE           R1, #1
MOVEQ           R1, #0
AND             R6, R6, R1
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R2, R0,LSL#5
CMP             R0, R5
BNE             loc_1D7A30
CMP             R6, #0
BEQ             loc_1D7BC0
LDR             R1, [R4,#4]
CMP             R6, #0
ORR             R1, R1, #2
STR             R1, [R4,#4]
BEQ             loc_1D7ADC
AND             R0, R1, #0x80
MOV             R1, R0,LSR#7
MOV             R0, R4
BL              sub_5B7D3C
NOP
B               loc_1D7B30
DCD off_6CEB30
DCD dword_6E2378
DCFS -144.0
DCFS -104.0
DCD off_6CE970
DCD 0x648
DCD sub_5B8A80
DCD sub_5B8C24
DCFS 0.3
DCFS -6.0
DCFS -11.0
DCFS 6.0
DCFS 9.0
DCFS 1.4142
DCFS 0.0
DCFS -1.0
DCFS -2.0
DCFS 2.0
DCD 0xC00B
LDR             R0, [R4,#8]
MOV             R9, #0
BIC             R0, R0, #0xFF
ORR             R0, R0, R8
STR             R0, [R4,#8]
LDR             R0, [SP,#0x80+var_68]
LDR             R1, [R11,#0x1B0]
ADD             R5, R1, R0,LSL#4
ADD             R0, R5, #0xCC
LDR             R1, [R5,#4]
BIC             R1, R1, #0x600
STR             R1, [R5,#4]
BL              sub_6347DC
CMP             R0, #0
NOP
BLS             loc_1D7D00
ADD             R10, R5, #0x168
VLDR            S18, =0.5
VLDR            S17, =1.0
LDR             R0, [R5,#0x168]
ADD             R2, R9, R9,LSL#2
LDR             R1, [R10,#0xC]
ADD             R2, R2, R9,LSL#3
ADD             R0, R0, R2,LSL#2
CMP             R1, R0
BHI             loc_1D7BD0
LDR             R3, [R10,#8]
LDR             R2, =0x4EC4EC4F
SUB             R1, R3, R1
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
B               loc_1D7BFC
LDR             R1, [R4,#4]
BIC             R1, R1, #2
STR             R1, [R4,#4]
B               loc_1D7ADC
LDR             R2, [R10,#8]
CMP             R2, R0
BLS             loc_1D7BFC
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
BLS             loc_1D7CE8
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
BEQ             loc_1D7D44
CMP             R0, #1
BEQ             loc_1D7D78
CMP             R0, #2
VMOVNE.F32      S0, S16
BEQ             loc_1D7D54
LDR             R0, [R1,#0x28]
ADD             R2, R1, #0x28 ; '('
ADD             R4, R4, #1
AND             R3, R0, #4
CMP             R4, R7
ORR             R0, R0, R3,LSL#3
STR             R0, [R2]
VSTR            S0, [R1,#0x1C]
BCC             loc_1D7C18
ADD             R9, R9, #1
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R9, R0
NOP
BCC             loc_1D7B7C
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BHI             loc_1D7D90
ADD             R0, R5, #0x168
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R4, #0
BEQ             loc_1D7DC8
MOV             R1, #0
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R4, R0,ASR#2
B               loc_1D7DC8
VMOV            S2, R4
VNEG.F32        S0, S0
VCVT.F32.U32    S2, S2
B               loc_1D7D70
VMOV            S3, R7
VMOV.F32        S0, S2
VMOV            S2, R4
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S2, S2
VMUL.F32        S3, S3, S1
VMLA.F32        S0, S3, S18
VMLS.F32        S0, S2, S1
B               loc_1D7CC4
SUB             R0, R7, R4
VMOV            S0, R0
VCVT.F32.U32    S3, S0
VMOV.F32        S0, S2
VNMLS.F32       S0, S3, S1
B               loc_1D7CC4
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
BEQ             loc_1D7E64
CMP             R2, #1
BEQ             loc_1D7E9C
CMP             R2, #2
VMOVNE.F32      S3, S19
BEQ             loc_1D7E74
VLDR            S4, [R5,#0x24]
MOVS            R0, R0,LSR#30
SUB             R2, R4, #1
VADD.F32        S4, S0, S4
VADD.F32        S3, S4, S3
VSTR            S3, [R5,#0x3C]
BEQ             loc_1D7EB4
CMP             R0, #1
BEQ             loc_1D7EEC
CMP             R0, #2
VMOVNE.F32      S0, S19
BEQ             loc_1D7EC4
VLDR            S2, [R5,#0x30]
MOV             R0, R1,LSL#19
VADD.F32        S1, S1, S2
MOVS            R0, R0,LSR#30
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x48]
BEQ             loc_1D7EFC
CMP             R0, #1
BEQ             loc_1D7F28
CMP             R0, #2
BNE             loc_1D7F50
B               loc_1D7EFC
DCFS 0.5
DCFS 1.0
DCD 0x4EC4EC4F
VNEG.F32        S3, S0
VMOV.F32        S4, S2
VMLS.F32        S3, S19, S4
B               loc_1D7DF8
VMOV            S3, R4
VLDR            S4, =0.5
VCVT.F32.U32    S5, S3
VMOV.F32        S3, S2
VMUL.F32        S5, S5, S3
VMOV.F32        S3, S1
VMLA.F32        S3, S5, S4
VMOV.F32        S4, S2
VMLS.F32        S3, S19, S4
B               loc_1D7DF8
VMOV            S3, R4
VMOV.F32        S5, S2
VCVT.F32.U32    S4, S3
VMOV.F32        S3, S1
VNMLS.F32       S3, S4, S5
B               loc_1D7DF8
VMOV            S3, R2
VNEG.F32        S0, S0
VCVT.F32.U32    S3, S3
B               loc_1D7EE4
VMOV            S3, R4
VMOV            S4, R2
VMOV.F32        S0, S1
VLDR            S5, =0.5
VCVT.F32.U32    S6, S3
VCVT.F32.U32    S3, S4
VMUL.F32        S4, S6, S2
VMLA.F32        S0, S4, S5
VMLS.F32        S0, S3, S2
B               loc_1D7E28
VMOV.F32        S0, S1
VLDR            S3, =1.0
VNMLS.F32       S0, S3, S2
B               loc_1D7E28
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
B               loc_1D7F50
VLDR            S0, [R5,#0x28]
VLDR            S3, [R5,#0x10]
VLDR            S1, [R5,#0x34]
VLDR            S2, [R5,#0x1C]
VMLA.F32        S0, S3, S28
VSTR            S19, [R5,#0x44]
VMLA.F32        S1, S2, S28
VSTR            S19, [R5,#0x50]
VSTR            S0, [R5,#0x40]
VSTR            S1, [R5,#0x4C]
LDR             R0, [SP,#0x80+var_68]
LDR             R1, [R11,#0x1B0]
ADD             R0, R1, R0,LSL#4
LDR             R2, [R0,#0x58]
LDR             R1, [R0,#0x54]
ADD             R3, R2, R2,LSL#1
ADD             R2, R3, R2,LSL#3
ADD             R2, R1, R2,LSL#5
CMP             R2, R1
MOVNE           R3, #3
BEQ             loc_1D7FA4
MOV             R2, R1
ADD             R1, R1, #0x160
STRB            R3, [R2,#0x6F]
ADD             R2, R0, #0x54 ; 'T'
LDM             R2, {R2,R12}
ADD             R4, R12, R12,LSL#1
ADD             R12, R4, R12,LSL#3
ADD             R2, R2, R12,LSL#5
CMP             R2, R1
BNE             loc_1D7F7C
LDR             R2, [R0,#4]
ORR             R2, R2, #0x10
STR             R2, [R0,#4]
LDR             R0, [SP,#0x80+var_68]
LDR             R1, [R11,#0x1B0]
ADD             R5, R1, R0,LSL#4
MOV             R0, R5
LDR             R1, [R5,#4]
BIC             R1, R1, #0x1800
ORR             R1, R1, #0x800
STR             R1, [R5,#4]
LDR             R2, [R5,#8]
MOV             R12, R2,LSR#8
TST             R12, #0xFF
BEQ             loc_1D7FF4
AND             R4, R1, #0x1800
CMP             R4, #0x800
TSTNE           R1, #8
MOVNE           R3, #1
BNE             loc_1D7FF8
MOV             R3, #0
TST             R1, #0x80
EORNE           R4, R3, #1
MOVEQ           R4, R3
CMP             R4, #0
BEQ             loc_1D80F0
CMP             R3, #0
BEQ             loc_1D809C
ORR             R4, R1, #0x80
STR             R4, [R0,#4]
LDR             R1, [R0,#0x58]
LDR             R3, [R0,#0x54]
MOV             R2, R2,LSL#8
ADD             R4, R1, R1,LSL#1
ADD             R4, R4, R1,LSL#3
AND             R1, R12, #0xFF
ADD             R12, R3, R4,LSL#5
CMP             R12, R3
MOV             R2, R2,LSR#24
BEQ             loc_1D80F0
LDRB            R6, [R3,#0x5C]
MOV             R12, R3
MOV             R4, #0
BIC             R6, R6, #0x70 ; 'p'
ORR             R6, R6, #0x21 ; '!'
STRB            R6, [R12,#0x5C]
STRB            R4, [R12,#0x5D]
STRB            R1, [R12,#0x5E]
STRB            R2, [R12,#0x5F]
LDRH            R4, [R12,#0x60]
ADD             R6, R0, #0x54 ; 'T'
ADD             R3, R3, #0x160
BIC             R4, R4, #0x700
BIC             R4, R4, #0x77 ; 'w'
STRH            R4, [R12,#0x60]
LDM             R6, {R6,R12}
ADD             R4, R12, R12,LSL#1
ADD             R12, R4, R12,LSL#3
ADD             R12, R6, R12,LSL#5
CMP             R12, R3
BNE             loc_1D8044
B               loc_1D80F0
BIC             R3, R1, #0x80
STR             R3, [R0,#4]
LDR             R3, [R0,#0x58]
LDR             R1, [R0,#0x54]
ADD             R2, R3, R3,LSL#1
ADD             R2, R2, R3,LSL#3
ADD             R2, R1, R2,LSL#5
CMP             R2, R1
BEQ             loc_1D80F0
LDRB            R3, [R1,#0x5C]
MOV             R2, R1
ADD             R1, R1, #0x160
BIC             R3, R3, #1
STRB            R3, [R2,#0x5C]
LDR             R2, [R0,#0x58]
LDR             R3, [R0,#0x54]
ADD             R12, R2, R2,LSL#1
ADD             R2, R12, R2,LSL#3
ADD             R2, R3, R2,LSL#5
CMP             R2, R1
BNE             loc_1D80C0
MOV             R9, #0
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R0, #0
NOP
BLS             loc_1D8288
ADD             R10, R5, #0x168
VLDR            S18, =0.5
VLDR            S17, =1.0
LDR             R0, [R5,#0x168]
ADD             R2, R9, R9,LSL#2
LDR             R1, [R10,#0xC]
ADD             R2, R2, R9,LSL#3
ADD             R0, R0, R2,LSL#2
CMP             R1, R0
BHI             loc_1D8158
LDR             R3, [R10,#8]
LDR             R2, =0x4EC4EC4F
SUB             R1, R3, R1
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
B               loc_1D8184
LDR             R2, [R10,#8]
CMP             R2, R0
BLS             loc_1D8184
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
BLS             loc_1D8270
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
BEQ             loc_1D82CC
CMP             R0, #1
BEQ             loc_1D8300
CMP             R0, #2
VMOVNE.F32      S0, S16
BEQ             loc_1D82DC
LDR             R0, [R1,#0x28]
ADD             R2, R1, #0x28 ; '('
ADD             R4, R4, #1
AND             R3, R0, #4
CMP             R4, R7
ORR             R0, R0, R3,LSL#3
STR             R0, [R2]
VSTR            S0, [R1,#0x1C]
BCC             loc_1D81A0
ADD             R9, R9, #1
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R9, R0
NOP
BCC             loc_1D8114
ADD             R0, R5, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BHI             loc_1D8318
ADD             R0, R5, #0x168
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R4, #0
BEQ             loc_1D8350
MOV             R1, #0
ADD             R0, R5, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R4, R0,ASR#2
B               loc_1D8350
VMOV            S2, R4
VCVT.F32.U32    S2, S2
VNMLA.F32       S0, S2, S1
B               loc_1D824C
VMOV            S0, R7
VMOV            S3, R4
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S3, S3
VMUL.F32        S4, S0, S1
VMOV.F32        S0, S2
VMLA.F32        S0, S4, S18
VMLS.F32        S0, S3, S1
B               loc_1D824C
SUB             R0, R7, R4
VMOV            S3, R0
VMOV.F32        S0, S2
VCVT.F32.U32    S2, S3
VNMLS.F32       S0, S2, S1
B               loc_1D824C
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
BEQ             loc_1D83E0
CMP             R2, #1
BEQ             loc_1D841C
CMP             R2, #2
VMOVNE.F32      S3, S19
BEQ             loc_1D83F4
VLDR            S4, [R5,#0x24]
MOVS            R0, R0,LSR#30
SUB             R2, R4, #1
VADD.F32        S4, S0, S4
VADD.F32        S3, S4, S3
VSTR            S3, [R5,#0x3C]
BEQ             loc_1D8434
CMP             R0, #1
BEQ             loc_1D846C
CMP             R0, #2
VMOVNE.F32      S0, S19
BEQ             loc_1D8444
VLDR            S2, [R5,#0x30]
MOV             R0, R1,LSL#19
VADD.F32        S1, S1, S2
MOVS            R0, R0,LSR#30
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x48]
BEQ             loc_1D847C
CMP             R0, #1
BEQ             loc_1D84A8
CMP             R0, #2
BNE             loc_1D84D0
B               loc_1D847C
VNEG.F32        S4, S0
VMOV.F32        S3, S2
VMLS.F32        S4, S19, S3
VMOV.F32        S3, S4
B               loc_1D8380
VMOV            S4, R4
VMOV.F32        S3, S2
VLDR            S5, =0.5
VCVT.F32.U32    S4, S4
VMUL.F32        S4, S4, S3
VMOV.F32        S3, S1
VMLA.F32        S3, S4, S5
VMOV.F32        S4, S2
VMLS.F32        S3, S19, S4
B               loc_1D8380
VMOV            S3, R4
VMOV.F32        S4, S2
VCVT.F32.U32    S5, S3
VMOV.F32        S3, S1
VNMLS.F32       S3, S5, S4
B               loc_1D8380
VMOV            S3, R2
VNEG.F32        S0, S0
VCVT.F32.U32    S3, S3
B               loc_1D8464
VMOV            S0, R4
VMOV            S3, R2
VLDR            S4, =0.5
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S3, S3
VMUL.F32        S5, S0, S2
VMOV.F32        S0, S1
VMLA.F32        S0, S5, S4
VMLS.F32        S0, S3, S2
B               loc_1D83B0
VMOV.F32        S0, S1
VLDR            S3, =1.0
VNMLS.F32       S0, S3, S2
B               loc_1D83B0
VLDR            S0, [R5,#0x10]
VLDR            S2, [R5,#0x28]
VLDR            S1, [R5,#0x1C]
VLDR            S3, [R5,#0x34]
VADD.F32        S0, S0, S2
VADD.F32        S1, S1, S3
VSTR            S0, [R5,#0x40]
VSTR            S1, [R5,#0x4C]
VSTR            S19, [R5,#0x44]
VSTR            S19, [R5,#0x50]
B               loc_1D84D0
VLDR            S0, [R5,#0x28]
VLDR            S3, [R5,#0x10]
VLDR            S1, [R5,#0x34]
VLDR            S2, [R5,#0x1C]
VMLA.F32        S0, S3, S28
VSTR            S19, [R5,#0x44]
VMLA.F32        S1, S2, S28
VSTR            S19, [R5,#0x50]
VSTR            S0, [R5,#0x40]
VSTR            S1, [R5,#0x4C]
LDR             R12, [SP,#0x80+var_68]
LDR             R3, [R11,#0x1B0]
MOV             R0, #1
VMOV.F32        S0, S20
ADD             R3, R3, R12,LSL#4
VMOV.F32        S2, S21
STR             R0, [R3,#0x60]
LDR             R1, [SP,#0x80+var_68]
LDR             R0, [R11,#0x1B0]
VMOV.F32        S1, S22
VMOV.F32        S3, S23
ADD             R0, R0, R1,LSL#4
MOV             R9, #0
VSTR            S27, [R0,#0x68]
LDR             R0, [SP,#0x80+var_68]
LDR             R1, [R11,#0x1B0]
ADD             R4, R1, R0,LSL#4
ADD             R0, R4, #0xCC
VSTR            S0, [R4,#0x18]
VSTR            S2, [R4,#0x1C]
VSTR            S19, [R4,#0x20]
VSTR            S1, [R4,#0xC]
VSTR            S3, [R4,#0x10]
VSTR            S19, [R4,#0x14]
BL              sub_6347DC
CMP             R0, #0
NOP
BLS             loc_1D86B8
ADD             R10, R4, #0x168
VLDR            S18, =0.5
VLDR            S17, =1.0
LDR             R0, [R4,#0x168]
ADD             R2, R9, R9,LSL#2
LDR             R1, [R10,#0xC]
ADD             R2, R2, R9,LSL#3
ADD             R0, R0, R2,LSL#2
CMP             R1, R0
BHI             loc_1D858C
LDR             R3, [R10,#8]
LDR             R2, =0x4EC4EC4F
SUB             R1, R3, R1
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
B               loc_1D85B4
LDR             R2, [R10,#8]
CMP             R2, R0
BLS             loc_1D85B8
SUB             R1, R1, R2
LDR             R2, =0x4EC4EC4F
SMULL           R2, R1, R2, R1
MOV             R2, R1,ASR#4
SUB             R2, R2, R1,ASR#31
ADD             R1, R2, R2,LSL#2
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1,LSL#2
MOV             R5, #0
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R7, R0,ASR#2
CMP             R7, #0
VMOVHI.F32      S16, S19
BLS             loc_1D86A0
LDR             R1, [R4,#0x5C]
LDR             R0, [R4,#0x54]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MLA             R1, R9, R1, R5
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
ADD             R0, R6, #0x104
VSTM            R2, {S0-S1}
VSTR            S2, [R8,#0x24]
VLDR            S0, [R4,#0xC]
VLDR            S2, [R4,#0x18]
LDR             R1, [R4,#4]
VSUB.F32        S1, S0, S2
MOV             R1, R1,LSL#21
MOVS            R1, R1,LSR#30
BEQ             loc_1D8704
CMP             R1, #1
BEQ             loc_1D8738
CMP             R1, #2
VMOVNE.F32      S0, S16
BEQ             loc_1D8714
LDR             R3, [R0,#0x28]
ADD             R5, R5, #1
CMP             R5, R7
AND             R2, R3, #4
ORR             R2, R3, R2,LSL#3
STR             R2, [R0,#0x28]
VSTR            S0, [R0,#0x1C]
BCC             loc_1D85D4
ADD             R9, R9, #1
ADD             R0, R4, #0xCC
BL              sub_6347DC
CMP             R9, R0
NOP
BCC             loc_1D854C
ADD             R0, R4, #0xCC
BL              sub_6347DC
CMP             R0, #1
NOP
BHI             loc_1D8750
ADD             R0, R4, #0x168
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R5, #0
BEQ             loc_1D8788
MOV             R1, #0
ADD             R0, R4, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R5, R0,ASR#2
B               loc_1D8788
DCFS 0.5
DCFS 1.0
VMOV            S2, R5
VCVT.F32.U32    S2, S2
VNMLA.F32       S0, S2, S1
B               loc_1D8680
VMOV            S0, R7
VMOV            S3, R5
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S3, S3
VMUL.F32        S0, S0, S1
VMLA.F32        S2, S0, S18
VMOV.F32        S0, S2
VMLS.F32        S0, S3, S1
B               loc_1D8680
SUB             R1, R7, R5
VMOV            S3, R1
VMOV.F32        S0, S2
VCVT.F32.U32    S2, S3
VNMLS.F32       S0, S2, S1
B               loc_1D8680
MOV             R1, #0
ADD             R0, R4, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R1, #1
MOV             R5, R0,ASR#2
ADD             R0, R4, #0xCC
BL              sub_62CA78
LDRD            R0, R1, [R0,#0x2C]
SUB             R0, R1, R0
MOV             R0, R0,ASR#2
CMP             R0, R5
MOVHI           R5, R0
LDR             R0, [R4,#4]
VLDR            S2, [R4,#0xC]
VLDR            S0, [R4,#0x18]
MOV             R0, R0,LSL#21
VSUB.F32        S1, S2, S0
MOVS            R0, R0,LSR#30
VNEGEQ.F32      S0, S2
BEQ             loc_1D8848
CMP             R0, #1
BEQ             loc_1D8850
CMP             R0, #2
VMOVNE.F32      S0, S19
BEQ             loc_1D8834
VLDR            S1, [R4,#0x24]
SUB             R0, R5, #1
VADD.F32        S1, S2, S1
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x3C]
VMOV.F32        S0, S2
VLDR            S1, [R4,#0x18]
LDR             R1, [R4,#4]
VSUB.F32        S2, S0, S1
MOV             R1, R1,LSL#21
MOVS            R1, R1,LSR#30
BEQ             loc_1D8860
CMP             R1, #1
BEQ             loc_1D889C
CMP             R1, #2
VMOVNE.F32      S0, S19
BEQ             loc_1D8870
VLDR            S2, [R4,#0x30]
LDR             R0, [R4,#4]
VADD.F32        S1, S1, S2
MOV             R0, R0,LSL#19
MOVS            R0, R0,LSR#30
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x48]
BEQ             loc_1D88AC
CMP             R0, #1
BEQ             loc_1D88D8
CMP             R0, #2
BNE             loc_1D8900
B               loc_1D88AC
VMOV            S3, R5
VLDR            S4, =0.5
VCVT.F32.U32    S3, S3
VMUL.F32        S3, S3, S1
VMLA.F32        S0, S3, S4
VMLS.F32        S0, S19, S1
B               loc_1D87BC
VMOV            S3, R5
VCVT.F32.U32    S3, S3
VNMLS.F32       S0, S3, S1
B               loc_1D87BC
VMOV            S3, R0
VCVT.F32.U32    S3, S3
VNMLA.F32       S0, S3, S2
B               loc_1D8800
VMOV            S3, R5
VMOV            S0, R0
VLDR            S4, =0.5
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S5, S0
VMUL.F32        S0, S3, S2
VMOV.F32        S3, S1
VMLA.F32        S3, S0, S4
VMOV.F32        S0, S3
VMLS.F32        S0, S5, S2
B               loc_1D8800
VMOV.F32        S0, S1
VLDR            S3, =1.0
VNMLS.F32       S0, S3, S2
B               loc_1D8800
VLDR            S0, [R4,#0x10]
VLDR            S3, [R4,#0x28]
VLDR            S1, [R4,#0x1C]
VLDR            S2, [R4,#0x34]
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTR            S0, [R4,#0x40]
VSTR            S1, [R4,#0x4C]
VSTR            S19, [R4,#0x44]
VSTR            S19, [R4,#0x50]
B               loc_1D8900
VLDR            S0, [R4,#0x28]
VLDR            S3, [R4,#0x10]
VLDR            S1, [R4,#0x34]
VLDR            S2, [R4,#0x1C]
VMLA.F32        S0, S3, S28
VSTR            S19, [R4,#0x44]
VMLA.F32        S1, S2, S28
VSTR            S19, [R4,#0x50]
VSTR            S0, [R4,#0x40]
VSTR            S1, [R4,#0x4C]
LDR             R0, [SP,#0x80+var_68]
LDR             R1, [R11,#0x1B0]
VMOV.F32        S0, S19
VLDR            S1, =1.0
ADD             R0, R1, R0,LSL#4
ADD             R1, R0, #0x30 ; '0'
VSTR            S0, [R0,#0x38]
VSTR            S1, [R0,#0x24]
VSTR            S26, [R0,#0x28]
VSTR            S0, [R0,#0x2C]
VSTM            R1, {S24-S25}
BL              sub_5B7B9C
LDR             R0, [SP,#0x80+var_64]
ADD             R0, R0, #1
CMP             R0, #4
STR             R0, [SP,#0x80+var_64]
BCC             loc_1D7988
LDR             R0, [R11,#0x100]
MOV             R5, #0x148
LDR             R4, [R11,#0x1B0]
MOV             R6, #0
LDRSH           R5, [R0,R5]
MOV             R1, #1
ADD             R0, R4, #0x168
STR             R5, [R4,#0x178]
VSTR            S19, [R4,#0x64]
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [R11,#0x1B0]
MOV             R5, #0x14C
MOV             R1, #1
ADD             R4, R0, #0x190
LDR             R0, [R11,#0x100]
LDRSH           R5, [R0,R5]
ADD             R0, R4, #0x168
STR             R5, [R4,#0x178]
VSTR            S19, [R4,#0x64]
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [R11,#0x1B0]
LDR             R5, =0x146
MOV             R1, #1
ADD             R4, R0, #0x320
LDR             R0, [R11,#0x100]
LDRSH           R5, [R0,R5]
ADD             R0, R4, #0x168
STR             R5, [R4,#0x178]
VSTR            S19, [R4,#0x64]
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [R11,#0x1B0]
LDR             R5, =0x14A
MOV             R1, #1
ADD             R4, R0, #0x4B0
LDR             R0, [R11,#0x100]
LDRSH           R5, [R0,R5]
ADD             R0, R4, #0x168
STR             R5, [R4,#0x178]
VSTR            S19, [R4,#0x64]
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [R11,#0x100]
LDR             R4, [R11,#0x1B0]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
LDR             R1, [R4,#8]
CMP             R0, #0
MOVNE           R0, #0xA
BIC             R1, R1, #0xFF
ORR             R0, R0, R1
STR             R0, [R4,#8]
LDR             R0, [R11,#0x1B0]
VLDR            S0, =0.8
VLDR            S1, =1.0
LDR             R1, [R0,#0x198]
BIC             R1, R1, #0xFF
ORR             R1, R1, #0x14
STR             R1, [R0,#0x198]
LDR             R0, [R11,#0x1B0]
LDR             R1, [R0,#0x328]
BIC             R1, R1, #0xFF
STR             R1, [R0,#0x328]
LDR             R0, [R11,#0x1B0]
LDR             R1, [R0,#0x4B8]
BIC             R1, R1, #0xFF
ORR             R1, R1, #0x14
STR             R1, [R0,#0x4B8]
LDR             R0, [R11,#0x1B0]
MOV             R1, #0x25 ; '%'
ADD             R0, R0, #0x38C
LDR             R2, [R0,#0x28]
MOV             R3, R2,LSL#31
ORR             R2, R2, R3,LSR#28
STR             R2, [R0,#0x28]
VSTR            S0, [R0,#0x10]
ADD             R0, R0, #0x14
VSTM            R0, {S0-S1}
LDR             R0, [R11,#0x1B0]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x11C
LDR             R3, [R0,#0x28]
MOV             R2, R3,LSL#31
ORR             R2, R3, R2,LSR#28
STR             R2, [R0,#0x28]
VSTR            S0, [R0,#0x10]
ADD             R0, R0, #0x14
MOV             R2, #0xFFFFFFFF
VSTM            R0, {S0-S1}
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x120000
ADD             R0, R0, #0x12C0
BL              sub_5F15E4
MOV             R1, R0
ADD             R0, R11, #0x194
BL              sub_123C70
LDR             R0, =0x19A
MOV             R1, #0
STRH            R6, [R0,R11]
MOV             R0, R11
BL              sub_14C3E8
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D14}
POP             {R4-R11,PC}
