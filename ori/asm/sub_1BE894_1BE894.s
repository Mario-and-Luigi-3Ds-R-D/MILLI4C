PUSH            {R4-R9}
ADD             R3, R0, #4
MOV             R12, #0x3E8
STM             R3, {R1,R2}
MOV             R4, #5
STRH            R12, [R0,#0xC]
STRH            R4, [R0,#0xE]
MOV             R8, #0x28 ; '('
MOV             R7, #0x320
STRH            R8, [R0,#0x10]
MOV             R6, #0x12C
STRH            R7, [R0,#0x14]
MOV             R5, #1
STRH            R6, [R0,#0x1A]
MOV             R3, #0x2BC
STRH            R5, [R0,#0x1C]
MOV             R12, #0x18
STRH            R3, [R0,#0x20]
MOV             R4, #0x78 ; 'x'
STRH            R12, [R0,#0x22]
MOV             R1, #0x258
STRH            R4, [R0,#0x24]
MOV             R2, #0x3C ; '<'
STRH            R1, [R0,#0x12]
STRH            R2, [R0,#0x16]
STRH            R2, [R0,#0x18]
STRH            R1, [R0,#0x1E]
POP             {R4-R9}
ADD             R0, R0, #0x2A8
LDR             R1, =unk_68C882
B               loc_1BE914
DCD unk_68C882
PUSH            {R4-R11,LR}
MOV             R5, #0
MOV             R7, R0
LDR             R0, =unk_68E030
VPUSH           {D8-D9}
ADD             R1, R0, #0x10
SUB             SP, SP, #0x74 ; 't'
LDM             R1, {R1,R2}
ADD             R3, SP, #0xA8+var_48
ADD             R4, SP, #0xA8+var_98
VLDR            S18, =360.0
STM             R3, {R1,R2}
ADD             R1, R0, #0x20 ; ' '
ADD             R3, SP, #0xA8+var_40
LDM             R1, {R1,R2}
ADD             R8, SP, #0xA8+var_48
VLDR            S19, =0.0
VLDR            S17, =0.000015259
STM             R3, {R1,R2}
ADD             R1, R0, #0x2B0
VLDR            S16, =-3.0
LDM             R1, {R1-R3,R12}
ADD             R9, SP, #0xA8+var_40
MOV             R10, SP
ADD             R11, SP, #0xA8+var_78
STMEA           SP, {R1-R3,R12}
ADD             R1, R0, #0x2C0
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x2D0
ADD             R4, SP, #0xA8+var_88
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x2E0
ADD             R4, SP, #0xA8+var_78
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x2F0
ADD             R4, SP, #0xA8+var_68
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x300
LDR             R0, [R0,#(dword_68E33C - 0x68E030)]
LDM             R1, {R1-R3}
STR             R0, [SP,#0xA8+var_4C]
ADD             R0, SP, #0xA8+var_58
STM             R0, {R1-R3}
CMP             R5, #0xA
MOVCC           R4, #1
BCC             loc_1BEA00
CMP             R5, #0x14
MOVCC           R4, #2
BCC             loc_1BEA00
CMP             R5, #0x26 ; '&'
MOVCC           R4, #3
BCC             loc_1BEA00
CMP             R5, #0x3C ; '<'
MOVCC           R4, #4
MOVCS           R4, #0
ADD             R3, R5, R5,LSL#2
ADD             R0, R9, R4,LSL#1
ADD             R2, R8, R4,LSL#1
LDRH            R0, [R0,#-2]
LDRH            R2, [R2,#-2]
ADD             R12, R11, R4,LSL#2
VMOV            S0, R0
SUB             R0, R5, R2
VLDR            S1, [R12,#-4]
TST             R5, #1
ADD             R6, R7, R3,LSL#3
ADD             R3, R10, R4,LSL#2
VCVT.F32.U32    S0, S0
VDIV.F32        S2, S18, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VNMLS.F32       S1, S2, S0
VMOVEQ.F32      S0, S19
VSTR            S1, [R6,#4]
VLDR            S1, [R3,#-4]
BEQ             loc_1BEA60
ADD             R0, SP, #0xA8+var_88
ADD             R0, R0, R4,LSL#2
VLDR            S0, [R0,#-4]
LDR             R0, =dword_6D1F40
VSUB.F32        S0, S1, S0
VSTR            S0, [R6]
BL              sub_546DB0
VMOV            S0, R0
ADD             R0, SP, #0xA8+var_98
ADD             R1, R0, R4,LSL#2
ADD             R0, SP, #0xA8+var_58
VLDR            S3, [R1,#-4]
ADD             R2, R0, R4,LSL#2
VCVT.F32.U32    S0, S0
VLDR            S1, [R2,#-4]
ADD             R0, SP, #0xA8+var_68
ADD             R3, R0, R4,LSL#2
LDR             R0, =dword_6D1F40
VMUL.F32        S2, S0, S17
VMOV.F32        S0, S16
VMLA.F32        S0, S3, S2
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#8]
LDR             R1, [R3,#-4]
STR             R1, [R6,#0xC]
BL              sub_546DB0
MOV             R1, #0x64 ; 'd'
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
CMP             R0, #0x2F ; '/'
MOVCC           R0, #0xA
MOVCS           R0, #0
STRB            R0, [R6,#0x10]
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R5, #0x3C ; '<'
BCC             loc_1BE9D0
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8-D9}
POP             {R4-R11,PC}
