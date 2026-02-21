PUSH            {R0-R11,LR}
MOV             R8, R2
MOV             R9, R3
VPUSH           {D8-D10}
SUB             SP, SP, #0x3C
ADD             R2, SP, #0x88+arg_4
VLDR            S16, [SP,#0x88+arg_0]
LDM             R2, {R4,R6}
BL              sub_14CB8C
LDR             R1, =off_6B3F90
LDR             R2, =off_6B8168
MOV             R10, #0
STR             R1, [R0]
ADD             R1, R0, #0x100
VLDR            S19, =0.0
STM             R1, {R2,R10}
MOV             R2, #4
STR             R10, [R0,#0x108]
STR             R10, [R0,#0x10C]!
ADD             R0, R0, #0x18
ADD             R1, R0, #0x24 ; '$'
STRB            R10, [R0,#1]
VSTR            S19, [R0,#4]
STRB            R2, [R0]
STR             R1, [R0,#8]
ADD             R1, R0, #0x34 ; '4'
STR             R1, [R0,#0x18]
ADD             R1, R0, #0x44 ; 'D'
STR             R1, [R0,#0xC]
ADD             R1, R0, #0x54 ; 'T'
STR             R1, [R0,#0x1C]
ADD             R1, R0, #0x64 ; 'd'
STR             R1, [R0,#0x10]
ADD             R1, R0, #0x74 ; 't'
STR             R1, [R0,#0x20]
ADD             R1, R0, #0x84
STR             R1, [R0,#0x14]!
ADD             R0, R0, #0x80
BL              sub_5A2F28
LDR             R1, =off_6C0770
SUB             R5, R0, #0x1B8
ADD             R0, R0, #0x20 ; ' '
STM             R0, {R1,R10}
MOV             R1, #2
MOV             R0, R5
BL              sub_14C450
MOV             R2, #1
MOV             R1, #0
MOV             R0, R5
BL              sub_14B798
LDR             R0, =dword_6D1F40
VSTR            S16, [R5,#0x110]
BL              sub_546DB0
VMOV            S0, R0
VLDR            S17, =0.000015259
LDR             R7, =off_6CE970
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VSTR            S0, [R5,#0x11C]
STRB            R4, [R5,#0x116]
STRB            R6, [R5,#0x117]
LDRB            R0, [R8,#0x495]
STRB            R0, [R5,#0x115]
LDR             R0, =dword_6E1330
LDR             R11, [R7]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2A54FC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2A54FC
LDR             R0, =flt_711FE4
VSTR            S19, [R0]
VSTR            S19, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S19, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R8, #1
LDR             R3, =flt_711FE4
MOV             R2, R5
MOV             R1, #0xF0
MOV             R0, R11
STMEA           SP, {R8,R10}
BL              sub_52C764
VMOV            S1, R6
VMOV            S0, R4
VLDR            S2, =80.0
CMP             R0, #0
STR             R0, [R5,#0x1D4]
STRHNE          R10, [R0,#0xA]
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S3, S0
LDM             R9, {R0-R2}
ADD             R3, SP, #0x88+var_80
VLDR            S20, =1.0
TST             R4, #1
STM             R3, {R0-R2}
ADD             R3, SP, #0x88+var_74
VMOVEQ.F32      S16, S20
STM             R3, {R0-R2}
VDIV.F32        S0, S2, S1
VMOV            S1, R0
VLDRNE          S16, =-1.0
VLDR            S18, =8.0
MOV             R4, #0
ADD             R9, SP, #0x88+var_80
VMUL.F32        S2, S0, S3
VLDR            S3, [R5,#0x11C]
VMLA.F32        S2, S0, S3
VMLA.F32        S1, S2, S16
VLDR            S2, =16.0
VSTR            S1, [SP,#0x88+var_74]
VMOV.F32        S1, S18
VLDR            S0, [R5,#0x11C]
VMLA.F32        S1, S2, S0
VMOV            S0, R1
VLDR            S2, =48.0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x88+var_70]
VLDR            S1, [R5,#0x11C]
VLDR            S0, =32.0
VMLA.F32        S0, S2, S1
VMOV            S1, R2
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x88+var_6C]
ADD             R0, R4, R4,LSL#1
ADD             R6, R9, R0,LSL#2
MOV             R1, R6
MOV             R0, R1
BL              sub_4800C0
LDR             R0, [R7]
MOV             R2, R6
MOV             R3, #1
ADD             R0, R0, #0x10C000
MOV             R1, R2
ADD             R0, R0, #0x214
BL              sub_5F1314
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2A55BC
LDR             R0, =0x19DFE8
LDR             R1, [R7]
LDRB            R2, [R5,#0x115]
LDR             R0, [R1,R0]
ADD             R1, SP, #0x88+var_5C
BL              sub_4D37F4
VMOV.F32        S2, S19
VLDR            S1, =12.0
VLDR            S0, [R5,#0x11C]
VLDR            S3, =-130.0
VLDR            S4, =340.0
ADD             R2, SP, #0x88+var_58
VMLA.F32        S2, S1, S0
VLDR            S0, [SP,#0x88+var_5C]
MOV             R1, #0x118
ADD             R3, SP, #0x88+var_5C
MOV             R9, #3
LDR             R10, =0x2AAAAAAB
ADD             R12, SP, #0x88+var_80
ADD             R4, R5, #0x124
VMLA.F32        S0, S2, S16
VSTR            S0, [SP,#0x88+var_5C]
VCVT.S32.F32    S1, S0
VSTM            R2, {S3-S4}
VMOV            R0, S1
STRH            R0, [R1,R5]
LDM             R3, {R0-R2}
ADD             R3, SP, #0x88+var_68
STM             R3, {R0-R2}
ADD             R1, R9, R9,LSL#1
MOV             R0, #0
ADD             R1, R12, R1,LSL#2
SUB             R6, R1, R12
ADD             R1, R4, R0,LSL#2
CMP             R6, #0xB
LDR             R2, [R1,#8]
BLE             loc_2A56DC
SMULL           R11, R3, R10, R6
SUB             R1, R12, #0xC
SUB             R2, R2, #4
MOV             R11, R3,ASR#1
SUB             R3, R11, R3,ASR#31
TST             R3, #1
BEQ             loc_2A56B4
ADD             R1, R1, #0xC
LDR             R11, [R1,R0,LSL#2]
STR             R11, [R2,#4]!
MOVS            R3, R3,ASR#1
BEQ             loc_2A56DC
ADD             R11, R1, R0,LSL#2
ADD             R1, R1, #0x18
VLDR            S0, [R11,#0xC]
SUBS            R3, R3, #1
VSTR            S0, [R2,#4]
LDR             R11, [R1,R0,LSL#2]
STR             R11, [R2,#8]!
BNE             loc_2A56BC
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_2A567C
MOV             R0, R4
STRB            R9, [R4,#1]
BL              sub_61E81C
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =4.0
ADD             R0, R5, #0x1B8
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMLA.F32        S18, S1, S0
VSTR            S18, [R5,#0x120]
VLDR            S0, [R5,#0x128]
VDIV.F32        S1, S0, S18
VMOV.F32        S0, S20
BL              sub_5A2E94
ADD             R3, SP, #0x88+var_80
STRB            R8, [R5,#0x114]
LDM             R3, {R0-R2}
ADD             R3, R5, #0x24 ; '$'
STM             R3, {R0-R2}
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R0, [SP,#0x88+var_30]
ADD             R1, R5, #0x100
BL              sub_1CF9FC
LDR             R0, =0xFFE683CC
LDR             R3, [R7]
VMOV.F32        S0, S19
LDR             R1, =0x3004C
ADD             R4, R5, #0x1D8
MOV             R2, #0
SUB             R0, R3, R0
BL              sub_503414
MOV             R6, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R6, #0
STR             R6, [R4,#4]
B               loc_2A57F8
DCD off_6B3F90
DCD off_6B8168
DCFS 0.0
DCD off_6C0770
DCD dword_6D1F40
DCFS 0.000015259
DCD off_6CE970
DCD dword_6E1330
DCD flt_711FE4
DCFS 1.0
DCFS -1.0
DCFS 80.0
DCFS 8.0
DCFS 16.0
DCFS 48.0
DCFS 32.0
DCD 0x19DFE8
DCFS 12.0
DCFS -130.0
DCFS 340.0
DCD 0x2AAAAAAB
DCFS 4.0
DCD 0x3004C
DCD 0xFFE683CC
STRNE           R4, [R6,#0x64]
LDR             R0, [R5,#0x1DC]
CMP             R0, #0
BEQ             loc_2A5834
MOV             R0, #0x400
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R5,#0x24]
LDR             R0, [R5,#0x1DC]
ADD             R1, R0, #0x10
VCVT.F32.U32    S2, S0
LDR             R0, =unk_6EB568
VDIV.F32        S0, S1, S2
BL              sub_51CC84
LDR             R0, [R7]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRH            R1, [R0,#(word_19D6A2 - 0x19D600)]
ADD             R1, R1, #1
STRH            R1, [R0,#(word_19D6A2 - 0x19D600)]
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R5
VPOP            {D8-D10}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
