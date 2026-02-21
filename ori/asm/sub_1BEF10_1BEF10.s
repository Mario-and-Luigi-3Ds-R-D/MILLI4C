PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R1, #0
MOV             R4, #1
ADD             R7, R5, #0x1000
LDR             R10, =byte_68DBBB
VPUSH           {D8-D10}
SUB             SP, SP, #4
LDR             R0, [R0,#8]
VLDR            S17, =1.0
VLDR            S16, =0.0
VLDR            S20, =0.5
VSTR            S17, [R0,#0x360]
LDR             R0, [R5,#8]
VSTR            S17, [R0,#0x364]
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x1D0
STRH            R1, [R0]
STRH            R4, [R0,#2]
STRB            R1, [R0,#4]
VSTR            S17, [R7,#0x1D8]
LDR             R2, [R5,#8]
LDRB            R0, [R10]
ADD             R2, R2, #0x400
SUB             R0, R0, #1
STRH            R0, [R2,#0xD2]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
STRH            R1, [R0,#0xD4]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
STRH            R4, [R0,#0xC8]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
STRH            R4, [R0,#0xCA]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R1, [R0]
STRH            R4, [R0,#2]
STRB            R1, [R0,#4]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x400
VSTR            S16, [R0,#0x78]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
VLDRNE          S18, =30.0
BEQ             loc_1BF044
LDR             R6, =off_6D1648
VLDR            S21, =-100.0
VLDR            S19, =790.0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S18
VMOV.F32        S0, S19
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S21
VMOV.F32        S3, S21
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S18
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R1, [R5,#8]
MOV             R0, #1
STRH            R0, [R1]
LDR             R1, [R5,#8]
STRH            R0, [R1,#2]
LDR             R1, [R5,#8]
STRB            R0, [R1,#4]
LDR             R0, [R5,#8]
MOV             R1, #0x140
ADD             R0, R0, #0x368
BL              sub_2FFE8C
LDR             R0, [R5,#8]
MOV             R1, #0xA0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xD6
BL              sub_12038C
LDR             R11, =0x19C98
VLDR            S19, =0.000015259
VLDR            S18, =0.25
MOV             R4, #0
RSB             R0, R4, R4,LSL#4
ADD             R1, R0, R4,LSL#5
LDR             R0, [R5,#4]
ADD             R1, R11, R1,LSL#2
RSB             R2, R4, R4,LSL#3
ADD             R6, R0, R1
LDR             R1, =0x21218
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R10]
CMP             R4, R0
BGE             loc_1BF13C
LDR             R1, =0x2807
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C882
ADD             R0, R0, R4,LSL#5
LDRSH           R9, [R0,#8]
LDRH            R0, [R0,#0x1E]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_1BF110
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R8, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R8
MOV             R2, R0,LSR#16
LDR             R0, [R6]
MOV             R1, R9
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_1BF150
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
ADD             R0, R5, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #0x9F
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S0, S19
VMOV.F32        S0, S18
VMLA.F32        S0, S1, S18
VSTR            S0, [R0,#0x28]
BLT             loc_1BF094
LDR             R4, [R5,#4]
MOV             R1, #0x2800
ADD             R4, R4, #0x21000
ADD             R4, R4, #0x15C
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
LDR             R0, [R5,#4]
LDR             R6, =dword_6E1330
ADD             R4, R0, #0x23000
ADD             R4, R4, #0x4E0
VSTR            S16, [R4,#0x30]
LDR             R0, [R6]
TST             R0, #1
BNE             loc_1BF210
MOV             R0, R6
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1BF210
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R6
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [R4,#0x10]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R4,#0x14]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x18]
LDR             R0, [R6]
TST             R0, #1
BNE             loc_1BF264
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1BF264
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S18, =-0.54
VLDR            S2, =6.0
VLDR            S1, =0.54
LDR             R1, [R0]
VMOV.F32        S3, S18
VLDR            S0, =2.4
STR             R1, [R4,#0x1C]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R4,#0x20]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x24]
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R1, [R5,#4]
MOV             R8, #0
ADD             R0, R5, #0xC
ADD             R1, R1, #0x800
VSTR            S18, [R1,#0x30]
LDR             R1, [R5,#8]
STRB            R8, [R1,#0x4B4]
B               loc_1BF318
DCFS 1.0
DCD byte_68DBBB
DCFS 0.0
DCFS 0.5
DCFS 30.0
DCFS -100.0
DCFS 790.0
DCD off_6D1648
DCD 0x19C98
DCFS 0.000015259
DCFS 0.25
DCD 0x21218
DCD 0x2807
DCD unk_68C882
DCD dword_6D1F40
DCD dword_6E1330
DCD flt_711FE4
DCFS -0.54
DCFS 6.0
DCFS 0.54
DCFS 2.4
VMOV.F32        S0, S17
STR             R0, [SP,#0x40+var_40]
LDR             R1, [R5,#4]
LDR             R0, [R5,#8]
LDRB            R3, [R10]
ADD             R2, R1, #0x108
VMOV.F32        S1, S0
LDR             R1, =unk_68C882
ADD             R0, R0, #0x10
BL              sub_49FCD0
VSTR            S16, [R7,#0x180]
LDR             R0, [R5,#8]
MOV             R6, #1
STRB            R6, [R0,#0xC]
STR             R8, [R7,#0x1E0]
STR             R8, [R7,#0x1E4]
STR             R8, [R7,#0x1F0]
STR             R8, [R7,#0x1EC]
STR             R8, [R7,#0x1E8]
LDR             R0, [R5,#8]
ADD             R4, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R4, R4, #0x178
BL              sub_546DB0
MOV             R1, #0xB4
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x12C
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R4]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VADDNE.F32      S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R6, [R4,#2]
STRHGE          R0, [R4,#2]
STRB            R8, [R4,#4]
LDR             R0, [R5,#8]
ADD             R4, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R4, R4, #0x178
BL              sub_546DB0
MOV             R1, #0x12C
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R4]
MOV             R1, #0x11C0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VADDNE.F32      S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R6, [R4,#2]
STRHGE          R0, [R4,#2]
STRB            R8, [R4,#4]
STRH            R8, [R1,R5]
MOV             R0, #0xFFFFFFFF
VSTR            S16, [R7,#0x1C4]
STR             R0, [R7,#0x1F4]
STRB            R8, [R7,#0x190]
ADD             SP, SP, #4
VPOP            {D8-D10}
POP             {R4-R11,PC}
