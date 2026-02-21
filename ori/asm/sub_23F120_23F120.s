PUSH            {R0-R2,R4-R11,LR}
MOV             R4, R0
MOV             R6, #1
MOV             R8, #0
LDR             R11, =byte_68DBBA
VPUSH           {D8-D13}
SUB             SP, SP, #0x10
LDR             R0, [R0,#8]
VLDR            S19, =1.0
VLDR            S18, =0.0
VSTR            S19, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S19, [R0,#0x364]
LDR             R1, [R4,#8]
LDRB            R0, [R11]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, [R4,#8]
MOV             R1, #0x140
ADD             R0, R0, #0x400
STRH            R8, [R0,#0xD4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S18, [R0,#0x78]
LDR             R0, [R4,#8]
STRB            R6, [R0,#0x4B5]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x368
BL              sub_2FFE8C
LDR             R0, [R4,#8]
MOV             R1, #0xA0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xD6
BL              sub_12038C
LDR             R0, [R4,#4]
ADD             R7, R0, #0x21000
ADD             R0, R0, #0x23000
ADD             R7, R7, #0x15C
ADD             R0, R0, #0x4E0
BL              sub_234B48
LDR             R0, [R4,#4]
LDR             R9, =dword_6E1330
ADD             R5, R0, #0x23000
ADD             R5, R5, #0x4E0
VSTR            S18, [R5,#0x30]
LDR             R0, [R9]
TST             R0, #1
BNE             loc_23F20C
MOV             R0, R9
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_23F20C
LDR             R0, =flt_711FE4
VSTR            S18, [R0]
VSTR            S18, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S18, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R9
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [R5,#0x10]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#0x14]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x18]
LDR             R0, [R9]
TST             R0, #1
BNE             loc_23F260
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_23F260
LDR             R0, =flt_711FE4
VSTR            S18, [R0]
VSTR            S18, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S18, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VMOV.F32        S1, S19
VMOV.F32        S0, S19
LDR             R1, [R0]
STR             R1, [R5,#0x1C]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#0x20]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x24]
VSTR            S19, [R5,#4]
VSTR            S19, [R5,#8]
VSTR            S19, [R5,#0xC]
LDR             R1, [R4,#8]
MOV             R5, #0
ADD             R0, R4, #0xC
STRB            R5, [R1,#0x4B4]
STR             R0, [SP,#0x70+var_70]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
LDRB            R3, [R11]
ADD             R2, R1, #0x108
LDR             R1, =unk_68C17A
ADD             R0, R0, #0x10
BL              sub_49FF54
STRH            R6, [R4,#0x40]
STRH            R6, [R4,#0x42]
STRB            R6, [R4,#0x44]
MOV             R0, #0xFF
ADD             R2, R4, #0xA00
VSTR            S19, [R4,#0x48]
STRB            R0, [R4,#0xA80]
STRH            R5, [R2,#0x82]
STRH            R5, [R2,#0x84]
STRH            R5, [R2,#0x86]
STRH            R5, [R2,#0x88]
LDRB            R1, [R11]
MOV             R0, #0
CMP             R1, #0
LDRGT           R12, =unk_68C17A
VLDRGT          S0, =3.0
BLE             loc_23F48C
RSB             R1, R0, R0,LSL#4
LDRH            R5, [R2,#0x82]
ADD             R3, R12, R1,LSL#1
LDRH            R8, [R2,#0x84]
LDRSH           R9, [R3]
RSB             R5, R5, R5,LSL#4
LDRH            LR, [R2,#0x86]
VMOV            S1, R9
ADD             R5, R12, R5,LSL#1
LDRH            R1, [R2,#0x88]
LDRSH           R10, [R5]
RSB             R8, R8, R8,LSL#4
RSB             LR, LR, LR,LSL#4
VCVT.F32.S32    S1, S1
VMOV            S2, R10
RSB             R1, R1, R1,LSL#4
ADD             R8, R12, R8,LSL#1
ADD             LR, R12, LR,LSL#1
ADD             R1, R12, R1,LSL#1
VSUB.F32        S3, S1, S0
VCVT.F32.S32    S1, S2
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23F38C
LDRSH           R9, [R3,#2]
LDRSH           R5, [R5,#2]
VMOV            S1, R9
VCVT.F32.S32    S2, S1
VMOV            S1, R5
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R2,#0x82]
LDRSH           R5, [R3]
LDRSH           R9, [R8]
VMOV            S1, R5
VCVT.F32.S32    S2, S1
VMOV            S1, R9
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23F3DC
LDRSH           R5, [R3,#2]
LDRSH           R8, [R8,#2]
VMOV            S1, R5
VMOV            S3, R8
VCVT.F32.S32    S1, S1
VADD.F32        S2, S1, S0
VCVT.F32.S32    S1, S3
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R2,#0x84]
LDRSH           R8, [R3]
LDRSH           R5, [LR]
VMOV            S1, R8
VMOV            S2, R5
VCVT.F32.S32    S1, S1
VADD.F32        S3, S1, S0
VCVT.F32.S32    S1, S2
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_23F42C
LDRSH           R5, [R3,#2]
LDRSH           R8, [LR,#2]
VMOV            S1, R5
VMOV            S2, R8
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VSUB.F32        S1, S1, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R2,#0x86]
LDRSH           R8, [R3]
LDRSH           R5, [R1]
VMOV            S1, R8
VMOV            S2, R5
VCVT.F32.S32    S1, S1
VADD.F32        S3, S1, S0
VCVT.F32.S32    S1, S2
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_23F47C
LDRSH           R3, [R3,#2]
LDRSH           R1, [R1,#2]
VMOV            S2, R3
VMOV            S1, R1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R2,#0x88]
LDRB            R1, [R11]
ADD             R0, R0, #1
CMP             R0, R1
BLT             loc_23F304
LDR             R0, [R4,#8]
MOV             R8, #0
STRB            R6, [R0,#0xC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAE
STRB            R8, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x68 ; 'h'
STRB            R6, [R0]
STR             R8, [R4,#0xAD8]
STR             R8, [R4,#0xADC]
STR             R8, [R4,#0xAE0]
STR             R8, [R4,#0xAEC]
B               loc_23F4E8
DCFS 1.0
DCD byte_68DBBA
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
DCD unk_68C17A
DCFS 3.0
STR             R8, [R4,#0xAF0]
LDR             R0, [R4,#8]
ADD             R5, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x178
BL              sub_546DB0
MOV             R1, #0xB4
VLDR            S21, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x12C
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S19
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R6, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R8, [R5,#4]
LDR             R0, [R4,#8]
ADD             R5, R0, #0x500
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x7E ; '~'
BL              sub_546DB0
MOV             R1, #0x12C
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S19
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R6, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R8, [R5,#4]
ADD             R5, R4, #0x800
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x2E4
BL              sub_546DB0
MOV             R1, #0x12C
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R0, #0
STRH            R0, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S19
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
CMP             R1, #1
STRHLT          R6, [R5,#2]
STRHGE          R1, [R5,#2]
STRB            R8, [R5,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x58 ; 'X'
VSTR            S18, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x5C ; '\'
VSTR            S18, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19000
ADD             R0, R0, #0xC60
VSTR            S18, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x64 ; 'd'
VSTR            S18, [R0]
BL              sub_464100
LDM             R0, {R2,R3,R5,R9,R10,R12}
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2A8
ADD             R0, R4, #0x800
VLDR            S0, =410.0
VLDR            S1, =-140.0
STM             R1, {R2,R3,R5,R9,R10,R12}
MOV             LR, #3
MOV             R10, R8
MOV             R12, #2
VSTR            S18, [R0,#0x29C]
VSTR            S18, [R0,#0x2A0]
STR             R8, [R4,#0xAC4]
STR             R8, [R4,#0xAC8]
LDR             R0, [R4,#4]
LDR             R3, =0x40490FDB
VLDR            S22, =-0.54
VLDR            S26, =0.54
LDR             R1, [R0,#0x474]
VLDR            S3, =-100.0
VLDR            S24, =-0.28
CMP             R1, R3
LDR             R1, =0x2770
VLDR            S25, =0.8
VLDR            S20, =2.0
VLDR            S16, =0.0
LDR             R1, [R1,R0]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
BICGT           R1, R1, #0xF
ORRGT           R2, R1, #1
BICLE           R2, R1, #0xF
STR             R2, [R0]
LDR             R1, [R4,#4]
VLDR            S17, =0.0
MOV             R9, R10
LDR             R0, [R1,#0x474]
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x770
CMP             R0, R3
BIC             R0, R2, #0xF0
ORRGT           R0, R0, #0x10
STR             R0, [R1]
LDR             R1, [SP,#0x70+var_2C]
LDR             R2, =0x21218
MOV             R3, #0x13
CMP             R1, #0x13
BEQ             loc_23FC90
BGT             loc_23F740
CMP             R1, #0
VLDR            S3, =30.0
VLDR            S4, =800.0
BEQ             loc_23F770
CMP             R1, #2
VLDR            S2, =15.0
VLDR            S5, =-90.0
BEQ             loc_23F974
CMP             R1, #3
BNE             loc_2403F4
B               loc_23FAFC
VLDR            S5, =10.0
VLDR            S2, =5.0
VLDR            S4, =850.0
VLDR            S21, =-0.135
CMP             R1, #0x15
MOV             R5, #0x15
BEQ             loc_23FEA8
CMP             R1, #0x17
BEQ             loc_2400CC
CMP             R1, #0x1B
BNE             loc_2403F4
B               loc_240280
LDR             R1, [R4,#8]
VMOV.F32        S2, S18
VMOV.F32        S18, S3
VMOV.F32        S16, S4
STRH            R8, [R1]
LDR             R1, [R4,#8]
VMOV.F32        S17, S0
VMOV            R10, S1
VMOV            R9, S1
STRH            R8, [R1,#2]
LDR             R1, [R4,#8]
MOV             R5, #0
STRB            R6, [R1,#4]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R6, [R1,#0xC8]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R6, [R1,#0xCA]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R8, [R1]
STRH            R6, [R1,#2]
STRB            R8, [R1,#4]
VMOV            R8, S2
RSB             R0, R5, R5,LSL#4
LDR             R1, =0x19C98
ADD             R2, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R1, R2,LSL#2
RSB             R2, R5, R5,LSL#3
ADD             R6, R0, R1
LDR             R1, =0x21218
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_23F8EC
LDR             R1, =0x2018
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R1, [R0,#8]
STR             R1, [SP,#0x70+var_70]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_23F864
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R11, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R11
MOV             R2, R0,LSR#16
LDR             R0, [R6]
LDR             R1, [SP,#0x70+var_70]
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_23F900
DCD dword_6D1F40
DCFS 0.5
DCD 0x40490FDB
DCD 0x2770
DCFS 410.0
DCFS -140.0
DCFS -0.54
DCFS 0.54
DCFS -100.0
DCFS -0.28
DCFS 0.8
DCD 0x21218
DCFS 2.0
DCFS 30.0
DCFS 800.0
DCFS 15.0
DCFS -90.0
DCFS 10.0
DCFS 5.0
DCFS 850.0
DCFS -0.135
DCD 0x19C98
DCD 0x2018
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_23F7D8
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x38]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [R4,#4]
VMOV.F32        S3, S22
VMOV.F32        S1, S26
VLDR            S2, =6.0
LDR             R1, [R0]
VLDR            S0, =2.4
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S22, [R0,#0x30]
B               loc_2403F4
LDR             R1, [R4,#8]
VMOV.F32        S17, S0
VMOV.F32        S3, S18
VMOV.F32        S0, S5
STRH            R12, [R1]
LDR             R1, [R4,#8]
VMOV.F32        S18, S2
VMOV.F32        S16, S4
VMOV            R10, S1
STRH            R8, [R1,#2]
LDR             R1, [R4,#8]
VMOV            R9, S0
MOV             R5, #0
STRB            R6, [R1,#4]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R12, [R1,#0xC8]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R6, [R1,#0xCA]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R8, [R1]
STRH            R6, [R1,#2]
STRB            R8, [R1,#4]
VMOV            R8, S3
RSB             R0, R5, R5,LSL#4
LDR             R1, =0x19C98
ADD             R2, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R1, R2,LSL#2
RSB             R2, R5, R5,LSL#3
ADD             R6, R0, R1
LDR             R1, =0x21218
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_23FA98
MOV             R1, #0x2080
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R1, [R0,#8]
STR             R1, [SP,#0x70+var_70]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_23FA6C
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R11, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R11
MOV             R2, R0,LSR#16
LDR             R0, [R6]
LDR             R1, [SP,#0x70+var_70]
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_23FAAC
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_23F9E0
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
VMOV.F32        S0, S20
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #4
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
B               loc_2403F4
LDR             R1, [R4,#8]
VMOV.F32        S3, S18
MOV             R3, #0
VMOV.F32        S18, S2
STRH            LR, [R1]
LDR             R1, [R4,#8]
VMOV.F32        S16, S4
VMOV.F32        S17, S0
VMOV            R8, S3
STRH            R12, [R1,#2]
LDR             R1, [R4,#8]
VMOV            R10, S1
MOV             R5, R3
STRB            R6, [R1,#4]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R12, [R1,#0xC8]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R6, [R1,#0xCA]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R3, [R1]
STRH            R6, [R1,#2]
STRB            R9, [R1,#4]
VMOV            R9, S5
RSB             R0, R5, R5,LSL#4
LDR             R1, =0x19C98
ADD             R2, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R1, R2,LSL#2
RSB             R2, R5, R5,LSL#3
ADD             R6, R0, R1
LDR             R1, =0x21218
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_23FC20
LDR             R1, =0x2095
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R1, [R0,#8]
STR             R1, [SP,#0x70+var_70]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_23FBF4
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R11, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R11
MOV             R2, R0,LSR#16
LDR             R0, [R6]
LDR             R1, [SP,#0x70+var_70]
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_23FC34
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_23FB68
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
VMOV.F32        S0, S20
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #6
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
B               loc_2403F4
DCFS 6.0
DCFS 2.4
DCD 0x2095
LDR             R1, [R4,#8]
MOV             R12, #0x12
VLDR            S2, =8.0
VLDR            S5, =1.5
STRH            R3, [R1]
LDR             R5, [R4,#8]
MOV             R1, #0x11
VMOV.F32        S1, S18
VMOV.F32        S18, S2
STRH            R12, [R5,#2]
LDR             R12, [R4,#8]
VMOV.F32        S17, S0
VMOV.F32        S23, S19
VLDR            S4, =0.4
STRB            R6, [R12,#4]
LDR             R12, [R4,#8]
VMOV            R8, S1
VMOV            R10, S3
ADD             R12, R12, #0x400
VLDR            S16, =550.0
STRH            R3, [R12,#0xC8]
LDR             R3, [R4,#8]
VLDR            S19, =256.0
MOV             R5, #0
ADD             R3, R3, #0x400
STRH            R1, [R3,#0xCA]
LDR             R1, [R4,#8]
MOV             R3, #0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R3, [R1]
STRH            R6, [R1,#2]
STRB            R9, [R1,#4]
LDR             R1, [R4,#8]
VMOV            R9, S3
VSTR            S5, [R1,#0x360]
LDR             R1, [R4,#8]
VSTR            S4, [R1,#0x364]
RSB             R0, R5, R5,LSL#4
LDR             R1, =0x19C98
ADD             R2, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R1, R2,LSL#2
RSB             R2, R5, R5,LSL#3
ADD             R6, R0, R1
LDR             R1, =0x21218
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_23FE04
LDR             R1, =0x20B4
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
LDR             R1, =unk_68C17A
RSB             R2, R5, R5,LSL#4
VMOV.F32        S0, S20
LDR             R12, [R0,#0x3C]
ADD             R11, R1, R2,LSL#1
MOV             R3, #0
LDRSH           R1, [R11,#0x12]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDRH            R0, [R11,#0x1C]
CMP             R0, #0
BNE             loc_23FDEC
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, [R6,#0xA4]
ADD             R0, R0, #0x10
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S23
VMUL.F32        S0, S0, S19
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_23FE18
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_23FD28
LDR             R1, =0x2014
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S20
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #0
MOV             R2, R3
AND             R0, R0, #0xF
ADD             R1, R0, #2
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [R4,#4]
VMOV.F32        S3, S24
VMOV.F32        S2, S20
VMOV.F32        S1, S26
LDR             R1, [R0]
VMOV.F32        S0, S25
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S22, [R0,#0x30]
B               loc_2403F4
LDR             R1, [R4,#8]
VMOV.F32        S19, S18
VMOV.F32        S18, S2
VMOV.F32        S16, S4
STRH            R5, [R1]
LDR             R1, [R4,#8]
VMOV.F32        S17, S0
VMOV            R10, S1
VMOV            R8, S19
STRH            R3, [R1,#2]
LDR             R1, [R4,#8]
MOV             R11, R2
STRB            R6, [R1,#4]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R5, [R1,#0xC8]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R3, [R1,#0xCA]
LDR             R1, [R4,#8]
MOV             R3, #0
MOV             R5, R3
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R3, [R1]
STRH            R6, [R1,#2]
STRB            R9, [R1,#4]
VMOV            R9, S1
LDR             R0, =0x19C98
RSB             R1, R5, R5,LSL#4
ADD             R2, R1, R5,LSL#5
LDR             R1, [R4,#4]
ADD             R0, R0, R2,LSL#2
RSB             R2, R5, R5,LSL#3
ADD             R6, R1, R0
ADD             R0, R11, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_23FFA0
LDR             R1, =0x20C8
MOV             R0, R6
BL              sub_543494
LDR             R1, =unk_68C17A
LDR             R2, [R6]
RSB             R3, R5, R5,LSL#4
VMOV.F32        S0, S20
ADD             R0, R1, R3,LSL#1
LDR             R12, [R2,#0x3C]
LDRSH           R1, [R0,#0x12]
MOV             R3, #0
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_23FFB4
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_23FF18
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S20
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #0
MOV             R2, R3
AND             R0, R0, #0xF
ADD             R1, R0, #4
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [R4,#4]
VMOV.F32        S3, S24
VMOV.F32        S2, S20
VMOV.F32        S1, S26
LDR             R1, [R0]
VMOV.F32        S0, S25
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
VLDR            S0, =104.72
ADD             R0, R0, #0x800
VSTR            S21, [R0,#0x30]
LDR             R1, [R4,#8]
LDR             R0, [R4,#4]
VLDR            S1, [R1,#0x364]
ADD             R0, R0, #0x108
VMUL.F32        S1, S1, S0
VLDR            S2, [R0,#8]
VLDR            S0, [R0]
VLDR            S3, [R0,#4]
VADD.F32        S2, S2, S19
VADD.F32        S0, S0, S19
LDR             R0, =off_6D1648
VADD.F32        S1, S3, S1
VSTMEA          SP, {S0-S2}
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, SP
MOV             R1, #9
BL              sub_168114
NOP
NOP
B               loc_2400C4
DCFS 8.0
DCFS 1.5
DCFS 0.4
DCFS 550.0
DCFS 256.0
DCD 0x20B4
DCD 0x2014
DCD 0x20C8
DCFS 104.72
DCD off_6D1648
STR             R0, [R4,#0xADC]
B               loc_2403F4
LDR             R1, [R4,#8]
VMOV.F32        S3, S18
VMOV.F32        S18, S2
VMOV.F32        S16, S4
STRH            R5, [R1]
LDR             R1, [R4,#8]
VMOV.F32        S17, S0
VMOV            R8, S3
VMOV            R10, S1
STRH            R3, [R1,#2]
LDR             R1, [R4,#8]
MOV             R11, R2
STRB            R6, [R1,#4]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R5, [R1,#0xC8]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R3, [R1,#0xCA]
LDR             R1, [R4,#8]
MOV             R3, #0
MOV             R5, R3
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R3, [R1]
STRH            R6, [R1,#2]
STRB            R9, [R1,#4]
VMOV            R9, S1
RSB             R0, R5, R5,LSL#4
LDR             R1, =0x19C98
ADD             R2, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R1, R2,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R11, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_2401C4
LDR             R1, =0x20D2
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
LDR             R2, [R6]
RSB             R1, R5, R5,LSL#4
VMOV.F32        S0, S20
ADD             R0, R0, R1,LSL#1
LDR             R12, [R2,#0x3C]
LDRSH           R1, [R0,#0x12]
MOV             R3, #1
MOV             R2, #0
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_2401D8
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_24013C
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S20
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #1
MOV             R2, #0
AND             R0, R0, #0xF
ADD             R1, R0, #6
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [R4,#4]
VMOV.F32        S3, S24
VMOV.F32        S2, S20
VMOV.F32        S1, S26
LDR             R1, [R0]
VMOV.F32        S0, S25
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R1, R4, #0x26 ; '&'
ADD             R0, R0, #0x800
VSTR            S21, [R0,#0x30]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x10
BL              sub_4A03E0
NOP
NOP
B               loc_2403F4
LDR             R3, [R4,#8]
MOV             R1, #0x1B
VMOV.F32        S2, S5
VMOV.F32        S1, S18
STRH            R1, [R3]
LDR             R3, [R4,#8]
VMOV.F32        S17, S0
VLDR            S0, =-40.0
VMOV.F32        S18, S2
STRH            LR, [R3,#2]
LDR             R3, [R4,#8]
VMOV            R8, S1
VMOV            R10, S3
VLDR            S16, =600.0
STRB            R6, [R3,#4]
LDR             R3, [R4,#8]
MOV             R11, R2
ADD             R3, R3, #0x400
STRH            R1, [R3,#0xC8]
LDR             R1, [R4,#8]
MOV             R3, #0
MOV             R5, R3
ADD             R1, R1, #0x400
STRH            R12, [R1,#0xCA]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R3, [R1]
STRH            R6, [R1,#2]
STRB            R9, [R1,#4]
VMOV            R9, S0
RSB             R0, R5, R5,LSL#4
LDR             R1, =0x19C98
ADD             R2, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R1, R2,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R11, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_240384
LDR             R1, =0x20E6
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
LDR             R2, [R6]
RSB             R1, R5, R5,LSL#4
VMOV.F32        S0, S20
ADD             R0, R0, R1,LSL#1
LDR             R12, [R2,#0x3C]
LDRSH           R1, [R0,#0x12]
MOV             R3, #0
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_240398
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_2402FC
LDR             R1, =0x2010
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S20
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #1
MOV             R2, #0
AND             R1, R0, #0xF
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
BEQ             loc_240554
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R4, R0
LDR             R0, [SP,#0x70+var_28]
ADD             R6, R4, #8
CMP             R0, #0
BEQ             loc_2404A4
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
MOV             R5, R0
BL              sub_5A186C
VMOV.F32        S1, S18
VMOV.F32        S0, S17
MOV             R0, R5
BL              sub_5A12F8
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
MOV             R5, R0
BL              sub_5A186C
VMOV.F32        S1, S18
VMOV.F32        S0, S16
MOV             R1, #0
MOV             R0, R5
BL              sub_5A13F0
ADD             SP, SP, #0x10
VMOV.F32        S0, S18
VPOP            {D8-D13}
ADD             SP, SP, #0xC
VMOV            S4, R9
VMOV            S2, R8
VMOV            S1, R8
VMOV            S3, R10
ADD             R0, R4, #0x16800
POP             {R4-R11,LR}
ADD             R0, R0, #0x2E8
B               sub_5A137C
ADD             R5, R4, #0x16800
ADD             R5, R5, #0x1B8
VSTR            S16, [R6,#0x8C]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
ADD             R5, R4, #0x16800
ADD             R5, R5, #0x1EC
VSTR            S17, [R6,#0x9C]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S17, [R5,#0xC]
VSTR            S17, [R5,#4]
ADD             R5, R4, #0x14000
ADD             R6, R4, #0x16800
ADD             R6, R6, #0x2EC
MOV             R7, R8
MOV             R0, R6
STR             R8, [R5,#0x294]
BL              sub_5A18EC
STR             R7, [R6,#0xC]
STR             R7, [R6,#4]
ADD             R6, R4, #0x16000
ADD             R6, R6, #0xB20
MOV             R0, R6
STR             R8, [R5,#0x298]
BL              sub_5A18EC
STR             R8, [R6,#0xC]
STR             R8, [R6,#4]
ADD             R6, R4, #0x16800
ADD             R6, R6, #0x354
MOV             R0, R6
STR             R10, [R5,#0x29C]
BL              sub_5A18EC
ADD             R4, R4, #0x16800
STR             R10, [R6,#0xC]
ADD             R4, R4, #0x388
STR             R10, [R6,#4]
MOV             R0, R4
STR             R9, [R5,#0x2A0]
BL              sub_5A18EC
STR             R9, [R4,#0xC]
STR             R9, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8-D13}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
