PUSH            {R4-R11,LR}
MOV             R5, R1
ADD             R0, R0, #0x10
VPUSH           {D8}
SUB             SP, SP, #0x3C
BL              sub_14F198
ADD             R0, R0, #0x400
MOV             R1, #8
ADD             R0, R0, #0x24 ; '$'
BL              sub_28AE5C
MOV             R1, #1
ADD             R0, R0, #0x6C ; 'l'
BL              sub_28B13C
SUB             R2, R0, #0x4A0
ADD             R0, R0, #0x90
MOV             R7, #0
STR             R7, [R0,#4]
STR             R7, [R0]
STR             R7, [R0,#8]
STR             R7, [R0,#0x14]
STR             R7, [R0,#0x10]
STR             R7, [R0,#0x18]
STR             R7, [R0,#0x24]
STR             R7, [R0,#0x20]
STR             R7, [R0,#0x28]
STRB            R7, [R0,#0x48]
ADD             R0, R2, #0x400
ADD             R0, R0, #0x1D8
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #3
STR             R2, [R0,#0x28]
SUB             R4, R0, #0x400
ADD             R6, R0, #0xB0
STRB            R1, [R0,#0x2C]
STR             R5, [R0,#0xB0]!
ADD             R0, R0, #8
MOV             R8, #1
STM             R0, {R7,R8}
SUB             R4, R4, #0x1D8
STR             R7, [R0,#8]
STR             R7, [R0,#0xC]
STR             R7, [R0,#0x10]
STR             R7, [R0,#0x14]
LDR             R0, =dword_6E1340
STRB            R7, [R4]
STRB            R7, [R4,#0xC]
VLDR            S16, =0.0
LDR             R0, [R0]
TST             R0, #1
BNE             loc_28A84C
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_28A84C
LDR             R0, =flt_71203C
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S16, [R0,#(flt_712040 - 0x71203C)]
VSTR            S16, [R0,#(flt_712044 - 0x71203C)]
VSTR            S16, [R0,#(flt_712048 - 0x71203C)]
VSTR            S16, [R0,#(flt_71204C - 0x71203C)]
VSTR            S0, [R0,#(flt_712050 - 0x71203C)]
VSTR            S16, [R0,#(flt_712054 - 0x71203C)]
VSTR            S16, [R0,#(flt_712058 - 0x71203C)]
VSTR            S16, [R0,#(flt_71205C - 0x71203C)]
VSTR            S16, [R0,#(flt_712060 - 0x71203C)]
VSTR            S0, [R0,#(flt_712064 - 0x71203C)]
VSTR            S16, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R0, =flt_71203C
ADD             R5, R4, #0x400
LDM             R0, {R1-R3,R9-R12,LR}
STR             R1, [R4,#0x404]
ADD             R1, R4, #0x400
ADD             R1, R1, #8
STM             R1, {R2,R3,R9-R12,LR}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#(flt_712068 - 0x71203C)]
LDM             R1, {R1-R3}
STR             R0, [R4,#0x430]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x24 ; '$'
STM             R0, {R1-R3}
MOV             R3, #0
VSTR            S16, [R4,#4]
LDR             R0, =off_6CE970
STRB            R8, [R4,#0x4BC]
STRB            R8, [R4,#0x450]
STRB            R7, [R4,#0x5D4]
STRB            R7, [R4,#0x5D5]
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #2
BL              sub_10A358
CMP             R0, #0
STRBNE          R7, [R0]
STRBNE          R7, [R0,#1]
STR             R0, [R4,#0x684]
LDR             R0, [R4,#0x688]
ADD             R7, R0, #4
MOV             R0, SP
BL              sub_28C8A8
ADD             R7, R7, #0xC
ADD             R3, R4, #0x400
LDM             R7, {R0-R2}
ADD             R3, R3, #0x1A4
STM             R3, {R0-R2}
ADD             R1, SP, #0x68+var_34
LDR             R0, [R6]
VLDR            S3, [R5,#0x1A4]
VLDR            S1, [R5,#0x1A8]
VLDR            S2, [R0,#0x20]
VLDR            S4, [R0,#0x24]
VDIV.F32        S0, S3, S2
VCVT.U32.F32    S0, S0
VDIV.F32        S3, S1, S4
VCVT.U32.F32    S1, S3
VCVT.F32.U32    S3, S0
VCVT.F32.U32    S0, S1
VMUL.F32        S1, S2, S3
VSTR            S1, [R5,#0x1A4]
LDR             R0, [R6]
VLDR            S1, [R0,#0x24]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1A4
VMUL.F32        S1, S1, S0
VLDR            S0, =0.5
VSTR            S1, [R5,#0x1A8]
VLDR            S3, [R0]
VLDR            S2, [R0,#8]
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x34 ; '4'
VSTR            S3, [SP,#0x68+var_38]
VSTM            R1, {S1-S2}
ADD             R1, R5, #0x1A8
VLDR            S1, =-0.5
VLDM            R1, {S2-S3}
ADD             R1, SP, #0x68+var_64
VSTR            S16, [SP,#0x68+var_68]
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S1
VMOV            R2, S2
VSTM            R1, {S2-S3}
ADD             R1, SP, #0x68+var_5C
VMOV            R3, S3
LDM             R1, {R7-R10,R12}
ADD             R1, R4, #0x400
ADD             R1, R1, #0x5C ; '\'
VSTR            S16, [R0,#0x24]
STM             R1, {R2,R3,R7-R10,R12}
ADD             R10, SP, #0x68+var_48
LDM             R10, {R1-R3,R7-R9,R12}
ADD             R10, R4, #0x400
ADD             R10, R10, #0x78 ; 'x'
STM             R10, {R1-R3,R7-R9,R12}
ADD             R7, R4, #0x400
ADD             R7, R7, #0x94
LDMFD           SP, {R1-R3}
STM             R7, {R1-R3}
ADD             R1, R4, #0x400
VLDR            S2, [R5,#0x1A4]
VLDR            S3, [R5,#0x1AC]
ADD             R1, R1, #0xC4
VMUL.F32        S2, S2, S1
VNEG.F32        S1, S3
VSTR            S2, [R1]
VSTR            S16, [R1,#4]
VSTR            S1, [R1,#8]
VLDR            S1, [R5,#0x1A4]
LDR             R2, [R5,#0x1A8]
VMUL.F32        S0, S1, S0
VSTR            S0, [R1,#0xC]
STR             R2, [R4,#0x4D4]
VSTR            S16, [R1,#0x14]
LDR             R1, [R6]
ADD             R5, R1, #4
MOV             R1, R5
BL              sub_28AE14
MOV             R1, R5
ADD             R0, R4, #0x4A0
BL              sub_28B08C
LDM             R5, {R0-R2}
ADD             R3, R4, #0x400
ADD             R3, R3, #0x1BC
STM             R3, {R0-R2}
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R4
VPOP            {D8}
POP             {R4-R11,PC}
