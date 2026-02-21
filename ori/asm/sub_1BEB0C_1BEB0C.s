PUSH            {R4-R11,LR}
MOV             R6, #0
MOV             R7, R0
LDR             R0, =unk_68E030
VLDR            S2, =60.0
VLDR            S1, =120.0
ADD             R1, R0, #0x28 ; '('
VPUSH           {D8-D12}
SUB             SP, SP, #0xBC
ADD             R3, SP, #0xE4+var_3C
ADD             R4, SP, #0xE4+var_C4
ADD             R10, SP, #0xE4+var_44
ADD             R8, SP, #0xE4+var_D4
LDM             R1, {R1,R2}
ADD             R11, SP, #0x40
VLDR            S22, =0.5
VLDR            S24, =1.0
STM             R3, {R1,R2}
ADD             R1, R0, #0x30 ; '0'
ADD             R3, SP, #0xE4+var_54
LDM             R1, {R1,R2}
ADD             R9, SP, #0xE4+var_C4
VLDR            S21, =360.0
VLDR            S23, =2.88
STM             R3, {R1,R2}
ADD             R1, R0, #0x48 ; 'H'
ADD             R3, SP, #0xE4+var_4C
LDM             R1, {R1,R2}
VLDR            S20, =0.000015259
STM             R3, {R1,R2}
ADD             R1, R0, #0x50 ; 'P'
ADD             R3, SP, #0xE4+var_44
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
ADD             R1, R0, #0x310
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x320
ADD             R4, SP, #0xE4+var_94
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x330
ADD             R4, SP, #0xE4+var_84
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x340
ADD             R4, SP, #0xE4+var_B4
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x350
ADD             R4, SP, #0xE4+var_D4
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x360
ADD             R4, SP, #0xE4+var_74
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R1, R0, #0x370
ADD             R4, SP, #0xE4+var_64
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R2, R0, #0x394
VLDR            S0, [R0,#(flt_68E3B0 - 0x68E030)]
LDR             R1, [R0,#(dword_68E3C0 - 0x68E030)]
LDR             R0, [R0,#(dword_68E3CC - 0x68E030)]
VSUB.F32        S18, S0, S2
LDM             R2, {R2,R3}
STR             R0, [SP,#0xE4+var_98]
ADD             R0, SP, #0xE4+var_A4
STM             R0, {R1-R3}
VSUB.F32        S17, S1, S18
ADD             R0, R6, R6,LSL#2
VLDR            S16, =0.0
ADD             R5, R7, R0,LSL#3
CMP             R6, #0xC
VSTR            S16, [R5,#0x24]
BCC             loc_1BEC60
CMP             R6, #0x1C
BCC             loc_1BEC70
CMP             R6, #0x30 ; '0'
BCC             loc_1BEC80
CMP             R6, #0x46 ; 'F'
BCC             loc_1BEC94
CMP             R6, #0x4A ; 'J'
BCS             loc_1BEC68
MOV             R0, #1
B               loc_1BEC98
CMP             R6, #0x4F ; 'O'
BCS             loc_1BEC78
MOV             R0, #2
B               loc_1BEC98
CMP             R6, #0x57 ; 'W'
BCS             loc_1BEC88
MOV             R0, #3
B               loc_1BEC98
CMP             R6, #0x5F ; '_'
MOVCS           R0, #0
BCS             loc_1BEC98
MOV             R0, #4
SUB             R0, R0, #1
CMP             R6, #0x46 ; 'F'
UXTH            R4, R0
BCS             loc_1BED14
ADD             R0, SP, #0xE4+var_4C
ADD             R0, R0, R4,LSL#1
ADD             R1, SP, #0xE4+var_3C
LDRH            R0, [R0]
ADD             R1, R1, R4,LSL#1
ADD             R2, SP, #0xE4+var_B4
VMOV            S0, R0
LDRH            R1, [R1]
ADD             R2, R2, R4,LSL#2
SUB             R0, R6, R1
VLDR            S19, [R2]
VCVT.F32.U32    S0, S0
VDIV.F32        S1, S21, S0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S0, S0
VNMLS.F32       S19, S1, S0
BL              sub_546DB0
VMOV            S0, R0
ADD             R0, R8, R4,LSL#2
VLDR            S1, [R0]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMLA.F32        S19, S1, S0
VSTR            S19, [R5,#4]
VSTR            S16, [R5,#0x20]
B               loc_1BEDB0
SUB             R3, R6, #0x46 ; 'F'
ADD             R0, SP, #0xE4+var_54
ADD             R2, R10, R4,LSL#1
ADD             R1, R0, R4,LSL#1
UXTH            R0, R3
LDRH            R3, [R2]
LDRH            R2, [R1]
ADD             R1, SP, #0xE4+var_B4
VMOV            S0, R3
SUB             R0, R0, R2
ADD             R1, R1, R4,LSL#2
VLDR            S16, [R1]
VCVT.F32.U32    S0, S0
VDIV.F32        S1, S21, S0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S0, S0
VNMLS.F32       S16, S1, S0
BL              sub_546DB0
VMOV            S0, R0
ADD             R0, R8, R4,LSL#2
ADD             R1, R11, R4,LSL#2
VLDR            S1, [R0]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMLA.F32        S16, S1, S0
VSTR            S16, [R5,#4]
VLDR            S0, [R1]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VADDNE.F32      S0, S0, S24
VDIV.F32        S1, S21, S0
VSUB.F32        S0, S1, S23
VSTR            S0, [R5,#0x20]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
ADD             R1, SP, #0xE4+var_84
ADD             R0, R9, R4,LSL#2
ADD             R1, R1, R4,LSL#2
VLDR            S1, [R1]
VCVT.F32.U32    S2, S0
VLDR            S0, [R0]
LDR             R0, =dword_6D1F40
VMUL.F32        S2, S2, S20
VMLS.F32        S0, S1, S2
VSTR            S0, [R5]
BL              sub_546DB0
VMOV            S0, R0
ADD             R0, SP, #0xE4+var_94
ADD             R0, R0, R4,LSL#2
VLDR            S1, =-3.0
ADD             R1, SP, #0xE4+var_64
ADD             R1, R1, R4,LSL#2
VCVT.F32.U32    S2, S0
VLDR            S0, [R0]
VLDR            S3, [R1]
ADD             R0, SP, #0xE4+var_74
CMP             R4, #0
VMOVEQ.F32      S16, S18
VMOVEQ.F32      S19, S17
VLDRNE          S16, =60.0
VLDRNE          S19, =120.0
VMUL.F32        S2, S2, S20
VMLA.F32        S1, S0, S2
VADD.F32        S0, S1, S3
VSTR            S0, [R5,#8]
LDR             R0, [R0,R4,LSL#2]
STR             R0, [R5,#0xC]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S0, S20
VMOV.F32        S0, S16
VNMLS.F32       S0, S1, S19
VSTR            S0, [R5,#0x18]
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VNMLS.F32       S16, S0, S19
VSTR            S16, [R5,#0x1C]
BL              sub_546DB0
VMOV            S0, R0
VLDR            S2, =2.5
VLDR            S1, =1.5
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMLA.F32        S1, S0, S2
VSTR            S1, [R5,#0x14]
BL              sub_546DB0
MOV             R1, #0x64 ; 'd'
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
CMP             R0, #0x2F ; '/'
MOVCC           R0, #0xA
MOVCS           R0, #0
STRB            R0, [R5,#0x10]
ADD             R0, R6, #1
UXTH            R6, R0
CMP             R6, #0x5F ; '_'
BCC             loc_1BEC28
ADD             SP, SP, #0xBC
VPOP            {D8-D12}
POP             {R4-R11,PC}
