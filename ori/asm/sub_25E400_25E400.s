PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R7, R2
MOV             R8, R3
ADD             R0, R0, #8
VPUSH           {D8-D9}
SUB             SP, SP, #0x30
LDR             R6, [SP,#0x60+arg_0]
BL              sub_14F198
STR             R5, [R0,#0x3F4]
SUB             R4, R0, #8
STRB            R6, [R0,#0x3F8]
LDR             R0, [R5]
MOV             R1, #1
ADD             R0, R0, #0x400
VLDR            S18, [R0,#0x7C]
ADD             R0, R4, #8
BL              sub_14C450
MOV             R1, R7
ADD             R0, R4, #8
BL              sub_14E984
VSTR            S18, [SP,#0x60+var_58]
VSTR            S18, [SP,#0x60+var_54]
ADD             R1, SP, #0x60+var_58
VSTR            S18, [SP,#0x60+var_50]
ADD             R0, R4, #8
BL              sub_14EA04
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
LDR             R0, =dword_6E1330
LDR             R2, =off_6CE970
VLDR            S18, =0.0
LDR             R1, [R0]
LDR             R0, [R4,#0x3FC]
LDR             R9, [R2]
TST             R1, #1
LDR             R5, [R0]
BNE             loc_25E4C4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_25E4C4
LDR             R0, =flt_711FE4
VSTR            S18, [R0]
VSTR            S18, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S18, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R10, #0
MOV             R0, #7
STMEA           SP, {R0,R10}
LDR             R3, =flt_711FE4
ADD             R2, R4, #8
MOV             R1, #0x2D4
MOV             R0, R9
BL              sub_52C764
VLDR            S19, =0.71111
STR             R0, [R4,#4]
CMP             R8, #0
STRH            R10, [R0,#0xA]
BEQ             loc_25E504
CMP             R8, #1
BNE             loc_25E5B4
B               loc_25E560
ADD             R0, R5, #0x160
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
BL              sub_47EADC
MOV             R8, R0
ADD             R0, R5, #0x168
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R8
VMOV            S1, R0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S17, S1
VMUL.F32        S0, S0, S19
BL              sub_464318
VMOV            S1, R8
VMUL.F32        S16, S0, S17
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S19
BL              sub_464380
VMUL.F32        S17, S0, S17
NOP
B               loc_25E5B4
ADD             R0, R5, #0x170
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
BL              sub_47EADC
MOV             R8, R0
ADD             R0, R5, #0x178
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R8
VMOV            S1, R0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S17, S1
VMUL.F32        S0, S0, S19
BL              sub_464318
VMOV            S1, R8
VMUL.F32        S16, S0, S17
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S19
BL              sub_464380
VMUL.F32        S17, S0, S17
VLDR            S1, [R7]
VLDR            S0, [R7,#8]
LDR             R0, =dword_6D1F40
VADD.F32        S16, S16, S1
CMP             R6, #0
VADD.F32        S17, S17, S0
BEQ             loc_25E5E8
ADD             R1, R5, #0x190
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S1, S0
VLDR            S2, [R5,#0x19C]
B               loc_25E5FC
ADD             R1, R5, #0x188
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S1, S0
VLDR            S2, [R5,#0x198]
VMOV.F32        S0, S18
VLDR            S3, [R4,#0x30]
VSTR            S18, [SP,#0x60+var_4C]
ADD             R2, SP, #0x60+var_4C
MOV             R1, #1
ADD             R0, R4, #0x1E4
VSUB.F32        S0, S0, S3
VLDR            S3, =1.0
VSTR            S3, [SP,#0x60+var_48]
VSTR            S18, [SP,#0x60+var_44]
BL              sub_5A299C
VLDR            S1, [R4,#0x2C]
VLDR            S0, [R4,#0x34]
ADD             R2, SP, #0x60+var_40
VSUB.F32        S1, S16, S1
VSUB.F32        S0, S17, S0
MOV             R1, #0
VSTR            S1, [SP,#0x60+var_40]
VSTR            S18, [SP,#0x60+var_3C]
VSTR            S0, [SP,#0x60+var_38]
LDR             R0, [R4,#0x20C]
VLDR            S0, [R0,#0x38]
ADD             R0, R4, #0x1E4
BL              sub_5A2B20
STR             R10, [R4]
ADD             SP, SP, #0x30 ; '0'
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R10,PC}
