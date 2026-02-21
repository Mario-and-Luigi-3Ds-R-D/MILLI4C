PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R5, #0
MOV             R6, #1
LDR             R9, =byte_68DBBA
VPUSH           {D8-D10}
SUB             SP, SP, #4
LDR             R0, [R0,#8]
VLDR            S18, =1.0
VLDR            S17, =0.0
VLDR            S16, =0.5
VSTR            S18, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S18, [R0,#0x364]
LDR             R1, [R4,#8]
LDRB            R0, [R9]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R5, [R0,#0xD4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R6, [R0,#0xC8]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R6, [R0,#0xCA]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R5, [R0]
STRH            R6, [R0,#2]
STRB            R5, [R0,#4]
LDR             R0, [R4,#8]
STRB            R6, [R0,#0x4B5]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S17, [R0,#0x78]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
VLDRNE          S19, =30.0
BEQ             loc_240698
LDR             R7, =off_6D1648
VLDR            S21, =-140.0
VLDR            S20, =800.0
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S19
VMOV.F32        S0, S20
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S21
VMOV.F32        S3, S21
VMOV.F32        S2, S17
VMOV.F32        S1, S17
VMOV.F32        S0, S19
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R1, [R4,#8]
MOV             R0, #0
STRH            R0, [R1]
LDR             R1, [R4,#8]
STRH            R0, [R1,#2]
LDR             R1, [R4,#8]
MOV             R0, #1
STRB            R0, [R1,#4]
LDR             R0, [R4,#8]
MOV             R1, #0x140
ADD             R0, R0, #0x368
BL              sub_2FFE8C
LDR             R0, [R4,#8]
MOV             R1, #0xA0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xD6
BL              sub_12038C
LDR             R10, =0x19C98
LDR             R11, =0x21218
MOV             R5, #0
LDR             R1, [R4,#4]
RSB             R0, R5, R5,LSL#4
ADD             R0, R0, R5,LSL#5
ADD             R0, R10, R0,LSL#2
ADD             R6, R1, R0
RSB             R0, R5, R5,LSL#3
ADD             R0, R11, R0,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R9]
CMP             R5, R0
BGE             loc_240790
LDR             R1, =0x2018
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R8, [R0,#8]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_240764
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
MOV             R2, R0,LSR#16
LDR             R0, [R6]
MOV             R1, R8
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_2407A4
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_2406E8
LDR             R0, [R4,#4]
ADD             R5, R0, #0x21000
ADD             R0, R0, #0x23000
ADD             R5, R5, #0x15C
ADD             R0, R0, #0x4E0
BL              sub_234B48
LDR             R0, [R4,#4]
VLDR            S0, =199.0
ADD             R1, R0, #0x108
ADD             R0, R0, #0x23400
LDM             R1, {R1-R3}
ADD             R0, R0, #0x108
STM             R0, {R1-R3}
MOV             R1, #0x2000
LDR             R0, [R4,#4]
ADD             R0, R0, #0x23400
VLDR            S1, [R0,#0x10C]
VADD.F32        S0, S1, S0
VSTR            S0, [R0,#0x10C]
MOV             R0, R5
BL              sub_543494
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x38]
MOV             R0, R5
BLX             R3
LDR             R0, [R5]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#4]
LDR             R6, =dword_6E1330
ADD             R5, R0, #0x23000
ADD             R5, R5, #0x4E0
VSTR            S17, [R5,#0x30]
LDR             R0, [R6]
TST             R0, #1
BNE             loc_24087C
MOV             R0, R6
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_24087C
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R6
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [R5,#0x10]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#0x14]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x18]
LDR             R0, [R6]
TST             R0, #1
BNE             loc_2408D0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2408D0
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S19, =-0.54
VLDR            S2, =6.0
VLDR            S1, =0.54
LDR             R1, [R0]
VMOV.F32        S3, S19
VLDR            S0, =2.4
STR             R1, [R5,#0x1C]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#0x20]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x24]
VSTR            S18, [R5,#4]
VSTR            S18, [R5,#8]
VSTR            S18, [R5,#0xC]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
MOV             R5, #0
ADD             R0, R0, #0x800
VSTR            S19, [R0,#0x30]
ADD             R0, R4, #0xC
B               loc_240984
DCFS 1.0
DCD byte_68DBBA
DCFS 0.0
DCFS 0.5
DCFS 30.0
DCFS -140.0
DCFS 800.0
DCD off_6D1648
DCD 0x19C98
DCD 0x21218
DCD 0x2018
DCD unk_68C17A
DCD dword_6D1F40
DCFS 199.0
DCD dword_6E1330
DCD flt_711FE4
DCFS -0.54
DCFS 6.0
DCFS 0.54
DCFS 2.4
LDR             R1, [R4,#8]
VMOV.F32        S1, S18
VMOV.F32        S0, S18
STRB            R5, [R1,#0x4B4]
STR             R0, [SP,#0x40+var_40]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
LDRB            R3, [R9]
ADD             R2, R1, #0x108
LDR             R1, =unk_68C17A
ADD             R0, R0, #0x10
BL              sub_49FF54
MOV             R6, #1
STRH            R6, [R4,#0x40]
STRH            R6, [R4,#0x42]
STRB            R6, [R4,#0x44]
MOV             R0, #0xFF
VSTR            S18, [R4,#0x48]
ADD             R1, R4, #0xA00
STRB            R0, [R4,#0xA80]
STRH            R5, [R1,#0x82]
STRH            R5, [R1,#0x84]
STRH            R5, [R1,#0x86]
STRH            R5, [R1,#0x88]
LDRB            R2, [R9]
MOV             R0, #0
CMP             R2, #0
LDRGT           R3, =unk_68C17A
VLDRGT          S0, =3.0
BLE             loc_240B84
RSB             R2, R0, R0,LSL#4
LDRH            R12, [R1,#0x82]
ADD             R2, R3, R2,LSL#1
LDRH            R5, [R1,#0x84]
LDRSH           R7, [R2]
RSB             R12, R12, R12,LSL#4
LDRH            R10, [R1,#0x86]
VMOV            S1, R7
ADD             R12, R3, R12,LSL#1
LDRH            R11, [R1,#0x88]
LDRSH           R8, [R12]
RSB             R5, R5, R5,LSL#4
RSB             R10, R10, R10,LSL#4
VCVT.F32.S32    S2, S1
VMOV            S1, R8
RSB             R11, R11, R11,LSL#4
ADD             R5, R3, R5,LSL#1
ADD             R10, R3, R10,LSL#1
ADD             R11, R3, R11,LSL#1
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_240A84
LDRSH           R7, [R2,#2]
LDRSH           R12, [R12,#2]
VMOV            S1, R7
VCVT.F32.S32    S2, S1
VMOV            S1, R12
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x82]
LDRSH           R7, [R2]
LDRSH           R12, [R5]
VMOV            S1, R7
VCVT.F32.S32    S2, S1
VMOV            S1, R12
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_240AD4
LDRSH           R7, [R2,#2]
LDRSH           R12, [R5,#2]
VMOV            S1, R7
VMOV            S2, R12
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VADD.F32        S1, S1, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x84]
LDRSH           R12, [R2]
LDRSH           R5, [R10]
VMOV            S2, R12
VMOV            S1, R5
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_240B24
LDRSH           R5, [R2,#2]
LDRSH           R12, [R10,#2]
VMOV            S1, R5
VCVT.F32.S32    S2, S1
VMOV            S1, R12
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x86]
LDRSH           R12, [R2]
LDRSH           R5, [R11]
VMOV            S2, R12
VMOV            S1, R5
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_240B74
LDRSH           R2, [R2,#2]
LDRSH           R12, [R11,#2]
VMOV            S2, R2
VMOV            S1, R12
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x88]
LDRB            R2, [R9]
ADD             R0, R0, #1
CMP             R0, R2
BLT             loc_2409FC
LDR             R0, [R4,#8]
MOV             R7, #0
STRB            R6, [R0,#0xC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAE
STRB            R7, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x68 ; 'h'
STRB            R6, [R0]
STR             R7, [R4,#0xA74]
STR             R7, [R4,#0xAD8]
STR             R7, [R4,#0xADC]
STR             R7, [R4,#0xAE0]
STR             R7, [R4,#0xAEC]
STR             R7, [R4,#0xAF0]
LDR             R0, [R4,#8]
ADD             R5, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x178
BL              sub_546DB0
MOV             R1, #0xB4
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x12C
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S18
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R6, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R7, [R5,#4]
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
MOV             R0, #0
STRH            R0, [R5]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S18
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
CMP             R1, #1
STRHLT          R6, [R5,#2]
STRHGE          R1, [R5,#2]
STRB            R7, [R5,#4]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2E4
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
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S18
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R6, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R7, [R5,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x58 ; 'X'
VSTR            S17, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x5C ; '\'
VSTR            S17, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19000
ADD             R0, R0, #0xC60
VSTR            S17, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x64 ; 'd'
VSTR            S17, [R0]
BL              sub_464100
LDM             R0, {R1-R3,R5,R6,R12}
ADD             R8, R4, #0x800
ADD             R8, R8, #0x2A8
ADD             R0, R4, #0x800
STM             R8, {R1-R3,R5,R6,R12}
VSTR            S17, [R0,#0x29C]
VSTR            S17, [R0,#0x2A0]
VSTR            S17, [R0,#0x298]
STR             R7, [R4,#0xAC4]
STR             R7, [R4,#0xAC8]
ADD             SP, SP, #4
VPOP            {D8-D10}
POP             {R4-R11,PC}
