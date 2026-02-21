PUSH            {R4-R11,LR}
MOV             R7, R0
ADD             R0, R0, #0x2C ; ','
MOV             R9, #0
MOV             R10, #1
VPUSH           {D8-D10}
SUB             SP, SP, #0x1C
MOV             R8, R3
STM             R0, {R9,R10}
STR             R9, [R0,#8]
STR             R9, [R0,#0xC]
STR             R9, [R0,#0x10]
STR             R9, [R0,#0x14]
MOV             R0, R7
BL              sub_2986A8
LDR             R0, [R7,#0x3C]
LDR             R6, [R7,#0x38]
CMP             R0, R6
BEQ             loc_29A718
MOV             R11, #5
VLDR            S18, =0.0
VLDR            S19, =1.0
VLDR            S20, =0.000015259
LDR             R4, [R6]
MOV             R1, R8
STRB            R11, [R4,#6]
LDR             R0, [R4,#0x2C]
ADD             R5, R0, #0x24 ; '$'
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E984
ADD             R1, R5, #0x80
LDR             R0, =dword_6D1F40
VLDM            R1, {S0-S1}
BL              sub_47EAA4
ADD             R5, R5, #0x78 ; 'x'
VMOV.F32        S16, S0
VLDM            R5, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VLDR            S1, [R4,#0x10]
VLDR            S3, [R4,#0x6C]
VMOV.F32        S17, S0
VLDR            S0, [R4,#0x18]
VLDR            S2, [R4,#0x74]
VSUB.F32        S1, S1, S3
MOV             R2, SP
VSUB.F32        S0, S0, S2
VMOV.F32        S2, S16
MOV             R1, #1
ADD             R0, R4, #0x224
VSTR            S1, [SP,#0x58+var_4C]
VSTR            S18, [SP,#0x58+var_48]
VSTR            S0, [SP,#0x58+var_44]
VMOV.F32        S1, S17
VSTMEA          SP, {S18-S19}
VSTR            S18, [SP,#0x58+var_50]
VLDR            S0, [R4,#0x70]
VNEG.F32        S0, S0
BL              sub_5A28C4
VMOV.F32        S0, S17
ADD             R2, SP, #0x58+var_4C
MOV             R1, #0
ADD             R0, R4, #0x224
BL              sub_5A2B20
LDR             R0, [R4,#0x2C]
MOV             R2, #0
LDR             R1, [R0,#8]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
LDRB            R0, [R4]
LDRB            R1, [R4,#0x29]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
ADD             R0, R0, #4
AND             R1, R0, #0xFF
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
LDRB            R0, [R4,#2]
STRB            R0, [R4,#0x13B]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_5C5724
VMOV            S16, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VCVT.F32.S32    S1, S16
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R1, R0
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14F01C
STRB            R10, [R4,#0x13A]
STRB            R9, [R4,#1]
LDR             R0, [R7,#0x3C]
ADD             R6, R6, #0xC
CMP             R0, R6
BNE             loc_29A5E0
ADD             SP, SP, #0x1C
MOV             R0, R7
VPOP            {D8-D10}
POP             {R4-R11,PC}
