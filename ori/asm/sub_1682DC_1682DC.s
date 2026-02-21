PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R7, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0x44
LDR             R0, [R7]
LDRB            R1, [R0,#0x3E]
CMP             R1, #0
ADDEQ           R8, R4, #0x15000
ADDEQ           R8, R8, #0x24 ; '$'
BEQ             loc_168324
LDRSB           R0, [R0,#0x3C]
RSB             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#2
ADD             R0, R4, R0,LSL#2
ADD             R8, R0, #0x15000
ADD             R8, R8, #0x24 ; '$'
CMP             R5, #0x400
LDREQ           R6, [R4,#0xC4]
LDRNE           R6, [R4,#0xC8]
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, R5
BL              sub_1102FC
MOV             R3, #0
MOV             R2, R3
MOV             R1, R5
ADD             R0, R4, #0x154
BL              sub_5B1340
MOVS            R1, R6
LDREQ           R0, [R4,#0x210]
MOV             R2, #0
LDREQ           R1, [R0,#0xA4]
LDR             R0, [R4,#0x210]
BL              sub_4AC814
LDR             R1, =dword_6D2418
LDR             R3, =0x80000054
LDR             R2, =0x804F02C0
VLDR            S19, =1.0
LDR             R0, [R1]
VLDR            S16, =0.0
CMP             R5, #0x410
VMOVEQ.F32      S0, S19
STR             R3, [R0],#4
VLDRNE          S0, =-1.0
STR             R2, [R0],#4
ADD             R5, R4, #0x15000
VSTM            R0!, {S16}
MVN             R9, R3,ASR#17
VSTM            R0!, {S16}
VSTM            R0!, {S16}
VSTM            R0!, {S0}
STR             R0, [R1]
LDR             R0, [R5,#0x18]
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1683E4
LDRB            R0, [R0,#6]
CMP             R0, #0xFF
BNE             loc_1683E4
MOV             R3, #0
MOV             R2, R9
MOV             R1, #6
MOV             R0, R8
BL              sub_5CE5D8
MOV             R3, #0
MOV             R2, R9
MOV             R1, R3
MOV             R0, R8
BL              sub_5CE5D8
LDRB            R0, [R5,#3]
CMP             R0, #0
BEQ             loc_16844C
LDR             R0, [R7]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
LDRB            R0, [R0,#0xA1]
CMP             R0, #2
BEQ             loc_1684B0
LDR             R0, =0x16ADC
MOV             R2, #0
LDR             R1, [R0,R4]
CMP             R1, #0
BEQ             loc_1685E0
LDR             R0, [R4,#0x210]
BL              sub_4AC814
MOV             R3, #0
MOV             R2, R9
MOV             R1, #1
MOV             R0, R8
BL              sub_5CE5D8
MOVS            R1, R6
LDREQ           R0, [R4,#0x210]
MOV             R2, #0
LDREQ           R1, [R0,#0xA4]
LDR             R0, [R4,#0x210]
BL              sub_4AC814
MOV             R3, #0
MOV             R2, R9
MOV             R1, #4
MOV             R0, R8
BL              sub_5CE5D8
LDR             R0, =flt_658018
MOV             R3, #1
MOV             R2, #0
MOV             R1, #0x400
VLDR            S1, [R0]
LDR             R0, =flt_658014
VLDR            S0, [R0]
MOV             R0, SP
BL              sub_12AB38
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_16863C
B               loc_1685EC
ADD             R5, R4, #0x16C00
ADD             R5, R5, #0xF8
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_1685D0
ADD             R0, R4, #0xCC
BL              sub_59CA44
ADD             R7, R0, #0x1A8
STR             R0, [R5]
MOV             R0, #0x400
BL              sub_11C418
RSB             R0, R0, #0
ADD             R0, R0, R0,LSR#31
MOV             R0, R0,ASR#1
VMOV            S0, R0
MOV             R0, #0x400
VCVT.F32.S32    S17, S0
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, #0x400
VCVT.F32.U32    S18, S0
BL              sub_485B0C
VSUB.F32        S4, S18, S17
MOV             R0, R0,LSR#1
VMOV            S0, R0
VADD.F32        S5, S18, S17
VLDR            S3, =2.0
VSTR            S16, [R7,#4]
VSTR            S16, [R7,#8]
VSTR            S16, [R7,#0x10]
VCVT.F32.U32    S2, S0
VSTR            S16, [R7,#0x18]
VDIV.F32        S6, S19, S4
VSTR            S16, [R7,#0x20]
VSTR            S16, [R7,#0x24]
VSTR            S16, [R7,#0x30]
VSTR            S16, [R7,#0x34]
VSTR            S16, [R7,#0x38]
VMUL.F32        S7, S6, S3
VNMUL.F32       S5, S5, S6
VSTR            S19, [R7,#0x3C]
VLDR            S0, =0.011111
VLDR            S1, =0.11111
ADD             R0, R7, #0x28 ; '('
VLDR            S20, =10.0
MOV             R1, #1
VDIV.F32        S4, S19, S2
VSTR            S7, [R7]
VSTR            S5, [R7,#0xC]
VMUL.F32        S3, S4, S3
VNMUL.F32       S2, S2, S4
VSTR            S3, [R7,#0x14]
VSTR            S2, [R7,#0x1C]
VSTM            R0, {S0-S1}
MOV             R0, R7
BL              sub_4636D8
VSTR            S16, [SP,#0x78+var_78]
VSTR            S16, [SP,#0x78+var_74]
VSTR            S20, [SP,#0x78+var_70]
VSTR            S16, [SP,#0x78+var_6C]
VSTR            S19, [SP,#0x78+var_68]
VSTR            S16, [SP,#0x78+var_64]
VSTR            S16, [SP,#0x78+var_60]
VSTR            S16, [SP,#0x78+var_5C]
VSTR            S16, [SP,#0x78+var_58]
LDR             R0, [R5]
ADD             R3, SP, #0x78+var_60
ADD             R2, SP, #0x78+var_6C
ADD             R0, R0, #0x148
MOV             R1, SP
BL              sub_463794
LDR             R1, [R5]
MOV             R2, #0
CMP             R1, #0
BNE             loc_168430
LDR             R0, [R4,#0x210]
LDR             R1, [R0,#0xA4]
B               loc_168430
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_16863C
LDR             R0, =flt_71203C
VSTR            S19, [R0]
VSTR            S16, [R0,#(flt_712040 - 0x71203C)]
VSTR            S16, [R0,#(flt_712044 - 0x71203C)]
VSTR            S16, [R0,#(flt_712048 - 0x71203C)]
VSTR            S16, [R0,#(flt_71204C - 0x71203C)]
VSTR            S19, [R0,#(flt_712050 - 0x71203C)]
VSTR            S16, [R0,#(flt_712054 - 0x71203C)]
VSTR            S16, [R0,#(flt_712058 - 0x71203C)]
VSTR            S16, [R0,#(flt_71205C - 0x71203C)]
VSTR            S16, [R0,#(flt_712060 - 0x71203C)]
VSTR            S19, [R0,#(flt_712064 - 0x71203C)]
VSTR            S16, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, SP
BL              sub_1280B0
MOV             R3, #0
MOV             R2, R9
MOV             R1, #3
MOV             R0, R8
BL              sub_5CE5D8
MOV             R3, #0
MOV             R2, R9
MOV             R1, #2
MOV             R0, R8
BL              sub_5CE5D8
MOV             R3, #0
MOV             R2, R9
MOV             R1, #5
MOV             R0, R8
BL              sub_5CE5D8
ADD             R0, R4, #0x2C4
NOP
BL              sub_599454
ADD             SP, SP, #0x44 ; 'D'
LDR             R0, =dword_6E9820
MOV             R1, #0
VPOP            {D8-D10}
POP             {R4-R9,LR}
B               sub_110290
