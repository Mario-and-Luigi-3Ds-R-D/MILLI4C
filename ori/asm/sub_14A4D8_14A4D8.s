PUSH            {R0-R11,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R5, #0
MOV             R10, R2
VPUSH           {D8}
SUB             SP, SP, #0x84
LDRB            R0, [R0,#0xF]
LDR             R9, [R2,#0x30]
CMP             R0, #0
MOVEQ           R0, R6,LSR#31
MOVEQ           R5, R0,LSL#1
BEQ             loc_14A530
CMP             R0, #1
BEQ             loc_14A524
MOV             R0, R1
BL              sub_47EDCC
MOV             R8, R0
B               loc_14A548
CMP             R6, #0
MOVLT           R5, #2
MOVGE           R5, #1
MOV             R0, R1
BL              sub_47EDCC
CMP             R5, #0
MOV             R8, R0
MOVNE           R1, #1
BNE             loc_14A54C
MOV             R1, #0
LDRB            R0, [R4,#0xE]
LDRB            R2, [R4,#0x10]
VLDR            S17, =0.0
CMP             R0, #0
LDRBEQ          R0, [R10,#0x34]
CMP             R2, #0
ADD             R1, R1, R8
VMOV            S0, R0
VCVT.F32.U32    S16, S0
BEQ             loc_14A580
CMP             R2, #1
BNE             loc_14A5C4
B               loc_14A5B4
SUB             R0, R1, #1
VMOV            S0, R0
VLDR            S1, =0.5
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VLDRCC          S1, =-0.5
VADD.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S17, S0
B               loc_14A5C4
SUB             R0, R1, #1
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S17, S0, S16
LDR             R0, =dword_6D2418
CMP             R5, #0
MOV             R11, #0
LDR             R7, [R0]
BEQ             loc_14A6F4
CMP             R5, #1
LDREQ           R5, [R10,#0x28]
LDRNE           R5, [R10,#0x2C]
CMP             R5, #0
BEQ             loc_14A6F4
VMOV            S0, R8
ADD             R0, R4, #0x14
ADD             R1, SP, #0xC0+var_B8
VCVT.F32.S32    S5, S0
VMOV.F32        S0, S17
VMLA.F32        S0, S5, S16
VLDM            R0, {S1-S6}
ADD             R0, SP, #0xC0+var_B8
VSTM            R0, {S1-S6}
ADD             R0, R4, #0x2C ; ','
ADD             R2, R0, #0xC
VADD.F32        S1, S3, S0
VMOV.F32        S3, S4
VSTR            S1, [SP,#0xC0+var_B0]
VLDR            S6, [R4,#0x2C]
VLDR            S0, [SP,#0xC0+var_B8]
VLDR            S2, [R4,#0x30]
VMUL.F32        S4, S6, S0
VMLA.F32        S4, S2, S3
VSTR            S4, [SP,#0xC0+var_68]
VLDR            S5, [SP,#0xC0+var_B4]
VLDR            S4, [SP,#0xC0+var_A8]
VMUL.F32        S6, S6, S5
VMLA.F32        S6, S2, S4
VSTR            S6, [SP,#0xC0+var_64]
VLDR            S2, [SP,#0xC0+var_A4]
VLDR            S8, [R4,#0x34]
VLDM            R0, {S6-S7}
VMUL.F32        S6, S6, S1
VMLA.F32        S6, S7, S2
VADD.F32        S6, S6, S8
VSTR            S6, [SP,#0xC0+var_60]
VLDM            R2, {S6-S7}
VMUL.F32        S0, S6, S0
VMLA.F32        S0, S7, S3
VSTR            S0, [SP,#0xC0+var_5C]
VLDR            S0, [R0,#0xC]
VLDR            S3, [R0,#0x10]
VMUL.F32        S0, S0, S5
VMLA.F32        S0, S3, S4
VSTR            S0, [SP,#0xC0+var_58]
VLDR            S0, [R0,#0xC]
ADD             R0, R0, #0x10
VMUL.F32        S0, S0, S1
VLDM            R0, {S3-S4}
ADD             R0, SP, #0xC0+var_68
CMP             R1, R0
VMLA.F32        S0, S3, S2
VADD.F32        S0, S0, S4
VSTR            S0, [SP,#0xC0+var_54]
BEQ             loc_14A6C8
ADD             R0, SP, #0xC0+var_68
VLDM            R0, {S0-S5}
ADD             R0, SP, #0xC0+var_B8
VSTM            R0, {S0-S5}
MOV             R2, R1
ADD             R1, R4, #0x44 ; 'D'
ADD             R0, R9, #0x20 ; ' '
BL              sub_480064
LDR             R1, [SP,#0xC0+var_28]
MOV             R3, R5
MOV             R2, R7
MOV             R0, R9
STR             R11, [SP,#0xC0+var_C0]
BL              sub_136908
MOV             R7, R0
CMP             R6, #0
RSBLT           R6, R6, #0
CMP             R8, #0
MOV             R5, #0
BLE             loc_14A828
ADD             R0, R4, #0x14
ADD             R1, SP, #0xC0+var_B0
VLDM            R0, {S0-S5}
ADD             R0, R4, #0x2C ; ','
ADD             R2, R0, #0xC
VSTM            R1, {S0-S5}
VADD.F32        S0, S2, S17
VMOV.F32        S5, S3
VSTR            S0, [SP,#0xC0+var_A8]
VLDR            S2, [R4,#0x2C]
VLDR            S1, [SP,#0xC0+var_B0]
VLDR            S6, [R4,#0x30]
VMUL.F32        S3, S2, S1
VMLA.F32        S3, S6, S5
VSTR            S3, [SP,#0xC0+var_88]
VLDR            S3, [SP,#0xC0+var_AC]
VMUL.F32        S2, S2, S3
VMLA.F32        S2, S6, S4
VSTR            S2, [SP,#0xC0+var_84]
VLDR            S2, [SP,#0xC0+var_9C]
VLDR            S8, [R4,#0x34]
VLDM            R0, {S6-S7}
VMUL.F32        S6, S6, S0
VMLA.F32        S6, S7, S2
VADD.F32        S6, S6, S8
VSTR            S6, [SP,#0xC0+var_80]
VLDM            R2, {S6-S7}
VMUL.F32        S1, S6, S1
VMLA.F32        S1, S7, S5
VSTR            S1, [SP,#0xC0+var_7C]
VLDR            S1, [R0,#0xC]
VLDR            S5, [R0,#0x10]
VMUL.F32        S1, S1, S3
VMLA.F32        S1, S5, S4
VSTR            S1, [SP,#0xC0+var_78]
VLDR            S4, [R0,#0xC]
VLDR            S1, [R0,#0x10]
VLDR            S3, [R0,#0x14]
VMUL.F32        S0, S4, S0
ADD             R0, SP, #0xC0+var_88
CMP             R1, R0
VMLA.F32        S0, S1, S2
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0xC0+var_74]
BEQ             loc_14A7CC
ADD             R0, SP, #0xC0+var_88
VLDM            R0, {S0-S5}
ADD             R0, SP, #0xC0+var_B0
VSTM            R0, {S0-S5}
MOV             R2, R1
ADD             R1, R4, #0x44 ; 'D'
ADD             R0, R9, #0x20 ; ' '
BL              sub_480064
LDR             R1, =0x66666667
MOV             R0, R6
SMULL           R2, R1, R1, R0
MOV             R2, R1,ASR#2
SUB             R6, R2, R1,ASR#31
RSB             R1, R6, #0
MOV             R2, R7
ADD             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#1
LDR             R1, [SP,#0xC0+var_28]
LDR             R3, [R10,R0,LSL#2]
MOV             R0, R9
STR             R11, [SP,#0xC0+var_C0]
BL              sub_136908
VSUB.F32        S17, S17, S16
ADD             R5, R5, #1
CMP             R5, R8
MOV             R7, R0
BLT             loc_14A708
LDR             R0, =dword_6D2418
STR             R7, [R0]
ADD             SP, SP, #0x84
VPOP            {D8}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
