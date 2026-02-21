PUSH            {R4-R7,LR}
SUB             SP, SP, #0x3D4
MOV             R5, R0
MOV             R4, R1
MOV             R6, R2
LDR             R1, =unk_68E3D0
MOV             R2, #0x380
MOV             R0, SP
BL              sub_127EB8
LDRB            R3, [R5,#0xAC0]
MOV             R1, #1
MOV             R2, #0x64 ; 'd'
RSB             R3, R3, #0
ADD             R0, R5, #0xAC0
ADD             R3, R1, R3,LSL#1
MOV             R12, R2
SMULBB          R3, R3, R2
MOV             R5, R2
MOV             R7, R2
VMOV            S0, R3
LDR             R2, =unk_68E3D0
CMP             R4, #0xFE
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x3E8+var_204]
LDRB            R3, [R0]
RSB             R3, R3, #0
ADD             R3, R1, R3,LSL#1
SMULBB          R3, R3, R12
VMOV            S0, R3
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x3E8+var_200]
LDRB            R3, [R0]
RSB             R3, R3, #0
ADD             R3, R1, R3,LSL#1
SMULBB          R3, R3, R5
VMOV            S0, R3
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x3E8+var_194]
LDRB            R0, [R0]
RSB             R0, R0, #0
ADD             R0, R1, R0,LSL#1
SMULBB          R0, R0, R7
VMOV            S0, R0
ADD             R0, R2, #0x380
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x3E8+var_190]
VLDM            R0, {S0-S6}
ADD             R0, SP, #0x3E8+var_68
VSTM            R0, {S0-S6}
ADD             R0, R2, #0x39C
ADD             R2, R2, #0x3B8
VLDM            R0, {S0-S6}
ADD             R0, SP, #0x3E8+var_4C
VSTM            R0, {S0-S6}
ADD             R0, SP, #0x3E8+var_30
VLDM            R2, {S0-S6}
VSTM            R0, {S0-S6}
BEQ             loc_23C644
CMP             R4, #0xFF
BEQ             loc_23C65C
CMP             R4, #0xFD
BEQ             loc_23C674
CMP             R4, #4
SUBHI           R0, R4, #0xC
MOV             R1, SP
UXTHHI          R4, R0
MOV             R2, #0x1C
RSB             R0, R4, R4,LSL#3
ADD             R1, R1, R0,LSL#2
MOV             R0, R6
BL              sub_1103A4
ADD             SP, SP, #0x3D4
POP             {R4-R7,PC}
MOV             R2, #0x1C
ADD             R1, SP, #0x3E8+var_68
MOV             R0, R6
BL              sub_1103A4
ADD             SP, SP, #0x3D4
POP             {R4-R7,PC}
MOV             R2, #0x1C
ADD             R1, SP, #0x3E8+var_4C
MOV             R0, R6
BL              sub_1103A4
ADD             SP, SP, #0x3D4
POP             {R4-R7,PC}
MOV             R2, #0x1C
ADD             R1, SP, #0x3E8+var_30
MOV             R0, R6
BL              sub_1103A4
ADD             SP, SP, #0x3D4
POP             {R4-R7,PC}
