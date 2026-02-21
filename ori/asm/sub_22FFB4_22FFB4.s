PUSH            {R4-R10,LR}
MOV             R6, R2
CMP             R1, #0
MOV             R5, R3
ADDNE           R0, R0, #0x108
VPUSH           {D8-D9}
ADD             R2, SP, #0x30+arg_4
VMOV.F32        S17, S0
LDM             R2, {R7,R8}
LDR             R4, [SP,#0x30+arg_C]
VLDR            S16, [SP,#0x30+arg_0]
VLDR            S18, =0.0
BNE             loc_230024
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_230020
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_230020
LDR             R0, =flt_711FE4
VSTR            S18, [R0]
VSTR            S18, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S18, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
MOV             R9, #0
CMP             R5, #0
MOV             R2, R9
VLDM            R0, {S0-S2}
VSTR            S18, [R4,#0x14]
STRB            R9, [R4,#0x11]
BLS             loc_2300AC
ADD             R1, R2, R2,LSL#1
LDRB            R12, [R4,#0x11]
ADD             R1, R6, R1,LSL#2
LDR             R3, [R4,#0x18]
VLDR            S5, [R1]
VLDR            S4, [R1,#4]
VLDR            S3, [R1,#8]
VADD.F32        S5, S5, S0
ADD             R1, R3, R12,LSL#2
VADD.F32        S4, S4, S1
VADD.F32        S3, S3, S2
ADD             R0, R4, #0x10
ADD             R2, R2, #1
CMP             R5, R2
VSTR            S5, [R1]
LDRB            R3, [R4,#0x11]
LDR             R1, [R4,#0x1C]
ADD             R1, R1, R3,LSL#2
VSTR            S4, [R1]
LDRB            R3, [R0,#1]
LDR             R1, [R0,#0x10]
ADD             R1, R1, R3,LSL#2
VSTR            S3, [R1]
LDRB            R1, [R0,#1]
ADD             R1, R1, #1
STRB            R1, [R0,#1]
BHI             loc_230040
ADD             R0, R4, #0x10
BL              sub_61E81C
VCVT.F32.S32    S2, S16
VLDR            S1, =1.0
LDRB            R1, [R4]
LDRH            R0, [R4,#2]
VSTR            S17, [R4,#8]
BIC             R1, R1, #0xA
ORR             R1, R1, #5
ORR             R1, R1, R7,LSL#3
BIC             R2, R1, #0x30 ; '0'
VSTR            S17, [R4,#0xC]
VDIV.F32        S0, S1, S2
VCVT.F32.S32    S1, S16
MOV             R1, R0,LSR#14
ORR             R0, R2, R8,LSL#5
MOV             R1, R1,LSL#14
BIC             R0, R0, #0xC0
VSTR            S1, [R4,#0x1F8]
STRB            R9, [R4,#1]
STR             R9, [R4,#4]
STRH            R1, [R4,#2]
VSTR            S0, [R4,#0x1F4]
STRB            R0, [R4]
MOV             R0, #1
VPOP            {D8-D9}
POP             {R4-R10,PC}
