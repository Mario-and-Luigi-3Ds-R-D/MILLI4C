PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R11, #0
LDR             R6, =byte_68DBBA
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0,#8]
VLDR            S17, =1.0
VLDR            S16, =0.0
VSTR            S17, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S17, [R0,#0x364]
LDR             R1, [R4,#8]
LDRB            R0, [R6]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, [R4,#8]
MOV             R1, #0x140
ADD             R0, R0, #0x400
STRH            R11, [R0,#0xD4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S16, [R0,#0x78]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x368
BL              sub_2FFE8C
LDR             R0, [R4,#8]
MOV             R1, #0xA0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xD6
BL              sub_12038C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x4E0
BL              sub_234B48
LDR             R0, [R4,#4]
LDR             R7, =dword_6E1330
ADD             R5, R0, #0x23000
ADD             R5, R5, #0x4E0
VSTR            S16, [R5,#0x30]
LDR             R0, [R7]
TST             R0, #1
BNE             loc_23C768
MOV             R0, R7
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_23C768
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R7
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [R5,#0x10]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#0x14]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x18]
LDR             R0, [R7]
TST             R0, #1
BNE             loc_23C7BC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_23C7BC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VMOV.F32        S1, S17
VMOV.F32        S0, S17
LDR             R1, [R0]
STR             R1, [R5,#0x1C]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#0x20]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x24]
VSTR            S17, [R5,#4]
VSTR            S17, [R5,#8]
VSTR            S17, [R5,#0xC]
LDR             R1, [R4,#8]
ADD             R0, R4, #0xC
STRB            R11, [R1,#0x4B4]
STR             R0, [SP,#0x40+var_40]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
LDRB            R3, [R6]
ADD             R2, R1, #0x108
LDR             R1, =unk_68C17A
ADD             R0, R0, #0x10
BL              sub_49FF54
MOV             LR, #1
STRH            LR, [R4,#0x40]
STRH            LR, [R4,#0x42]
ADD             R1, R4, #0xA00
STRB            LR, [R4,#0x44]
VSTR            S17, [R4,#0x48]
STRH            R11, [R1,#0x82]
STRH            R11, [R1,#0x84]
STRH            R11, [R1,#0x86]
STRH            R11, [R1,#0x88]
LDRB            R2, [R6]
MOV             R0, #0
CMP             R2, #0
LDRGT           R3, =unk_68C17A
VLDRGT          S0, =3.0
BLE             loc_23C9E0
RSB             R2, R0, R0,LSL#4
LDRH            R12, [R1,#0x82]
ADD             R2, R3, R2,LSL#1
LDRH            R5, [R1,#0x84]
LDRSH           R7, [R2]
RSB             R12, R12, R12,LSL#4
LDRH            R9, [R1,#0x86]
VMOV            S1, R7
ADD             R12, R3, R12,LSL#1
LDRH            R10, [R1,#0x88]
LDRSH           R8, [R12]
RSB             R5, R5, R5,LSL#4
RSB             R9, R9, R9,LSL#4
VCVT.F32.S32    S2, S1
VMOV            S1, R8
RSB             R10, R10, R10,LSL#4
ADD             R5, R3, R5,LSL#1
ADD             R9, R3, R9,LSL#1
ADD             R10, R3, R10,LSL#1
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23C8E0
LDRSH           R7, [R2,#2]
LDRSH           R12, [R12,#2]
VMOV            S1, R7
VMOV            S2, R12
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VSUB.F32        S1, S1, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x82]
LDRSH           R12, [R2]
LDRSH           R7, [R5]
VMOV            S1, R12
VMOV            S2, R7
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VSUB.F32        S1, S1, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_23C930
LDRSH           R12, [R2,#2]
LDRSH           R5, [R5,#2]
VMOV            S1, R12
VMOV            S2, R5
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VADD.F32        S1, S1, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x84]
LDRSH           R5, [R2]
LDRSH           R12, [R9]
VMOV            S1, R5
VMOV            S2, R12
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VADD.F32        S1, S1, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23C980
LDRSH           R12, [R2,#2]
LDRSH           R5, [R9,#2]
VMOV            S1, R12
VCVT.F32.S32    S2, S1
VMOV            S1, R5
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x86]
LDRSH           R12, [R2]
LDRSH           R5, [R10]
VMOV            S2, R12
VMOV            S1, R5
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_23C9D0
LDRSH           R2, [R2,#2]
LDRSH           R12, [R10,#2]
VMOV            S2, R2
VMOV            S1, R12
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
STRHLS          R0, [R1,#0x88]
LDRB            R2, [R6]
ADD             R0, R0, #1
CMP             R0, R2
BLT             loc_23C858
LDR             R0, [R4,#8]
MOV             R7, LR
STRB            LR, [R0,#0xC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAE
STRB            R11, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x68 ; 'h'
STRB            LR, [R0]
STR             R11, [R4,#0xAD8]
STR             R11, [R4,#0xADC]
STR             R11, [R4,#0xAE0]
STR             R11, [R4,#0xA74]
STR             R11, [R4,#0xAEC]
STR             R11, [R4,#0xAF0]
LDR             R0, [R4,#8]
ADD             R5, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x178
BL              sub_546DB0
MOV             R1, #0xB4
VLDR            S18, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x12C
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VADDNE.F32      S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
B               loc_23CAA0
DCFS 1.0
DCD byte_68DBBA
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
DCD unk_68C17A
DCFS 3.0
DCD dword_6D1F40
DCFS 0.5
CMP             R0, #1
STRHLT          R7, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R11, [R5,#4]
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
VMUL.F32        S0, S0, S18
VADDNE.F32      S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R7, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R11, [R5,#4]
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
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VADDNE.F32      S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R7, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R11, [R5,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x58 ; 'X'
VSTR            S16, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x5C ; '\'
VSTR            S16, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19000
ADD             R0, R0, #0xC60
VSTR            S16, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x64 ; 'd'
VSTR            S16, [R0]
BL              sub_464100
LDM             R0, {R1-R3,R5,R8,R12}
ADD             R9, R4, #0x800
ADD             R9, R9, #0x2A8
ADD             R0, R4, #0x800
VLDR            S19, =-0.54
VLDR            S1, =0.54
STM             R9, {R1-R3,R5,R8,R12}
VSTR            S16, [R0,#0x29C]
VSTR            S16, [R0,#0x2A0]
VSTR            S16, [R0,#0x298]
STR             R11, [R4,#0xAC4]
STR             R11, [R4,#0xAC8]
LDR             R0, [R4,#4]
LDR             R2, =0x40490FDB
VLDR            S3, =-0.28
VLDR            S2, =2.0
LDR             R1, [R0,#0x474]
VLDR            S0, =0.8
VLDR            S18, =1.5
CMP             R1, R2
LDR             R1, =0x2770
LDR             R1, [R1,R0]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
BIC             R1, R1, #0xF
ORRGT           R1, R1, #1
STR             R1, [R0]
LDR             R0, [R4,#4]
BIC             R1, R1, #0xF0
LDR             R3, [R0,#0x474]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
CMP             R3, R2
ORRGT           R1, R1, #0x10
STR             R1, [R0]
LDR             R0, [R4,#8]
MOV             R3, #3
MOV             R1, #0x13
LDRSH           R2, [R0]
CMP             R2, #0x13
BEQ             loc_23CD44
BGT             loc_23CC94
CMP             R2, #0
BEQ             loc_23CCD8
CMP             R2, #2
MOV             R1, #2
BEQ             loc_23CD24
CMP             R2, #3
BNE             loc_23CC88
STRH            R3, [R0]
LDR             R0, [R4,#8]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
VLDR            S19, =-0.135
CMP             R2, #0x15
MOV             R12, #0x15
BEQ             loc_23CD98
CMP             R2, #0x17
BEQ             loc_23CE34
CMP             R2, #0x1B
BNE             loc_23CC88
MOV             R1, #0x1B
STRH            R1, [R0]
LDR             R0, [R4,#8]
STRH            R3, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
STRH            R11, [R0]
LDR             R0, [R4,#8]
VMOV.F32        S16, S19
VLDR            S2, =6.0
VLDR            S0, =2.4
STRH            R11, [R0,#2]
LDR             R0, [R4,#8]
VMOV.F32        S3, S16
STRB            R7, [R0,#4]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S16, [R0,#0x30]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
STRH            R1, [R0]
LDR             R0, [R4,#8]
STRH            R11, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0x12
STRH            R2, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
VLDR            S0, =0.4
ADD             R0, R0, #0x800
VSTR            S19, [R0,#0x30]
LDR             R0, [R4,#8]
VSTR            S18, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0x364]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
STRH            R12, [R0]
LDR             R0, [R4,#8]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
VLDR            S0, =104.72
ADD             R2, SP, #0x40+var_3C
ADD             R0, R0, #0x800
VSTR            S19, [R0,#0x30]
LDR             R1, [R4,#8]
LDR             R0, [R4,#4]
VLDR            S1, [R1,#0x364]
ADD             R0, R0, #0x108
VMUL.F32        S0, S1, S0
VLDM            R0, {S2-S3}
VLDR            S1, [R0,#8]
LDR             R0, =off_6D1648
VADD.F32        S2, S2, S16
VADD.F32        S1, S1, S16
VADD.F32        S0, S3, S0
VSTR            S2, [SP,#0x40+var_40]
VSTM            R2, {S0-S1}
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, SP
MOV             R1, #9
BL              sub_168114
STR             R0, [R4,#0xADC]
LDR             R0, [R4,#8]
VSTR            S18, [R0,#0x360]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
STRH            R12, [R0]
LDR             R0, [R4,#8]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
VMOV.F32        S0, S17
ADD             R1, R4, #0x26 ; '&'
ADD             R0, R0, #0x800
VSTR            S19, [R0,#0x30]
STR             R1, [SP,#0x40+var_40]
LDRD            R0, R1, [R4,#4]
VMOV.F32        S1, S0
LDRB            R3, [R6]
ADD             R2, R0, #0x108
ADD             R0, R1, #0x10
LDR             R1, =unk_68C17A
BL              sub_49FF54
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
