PUSH            {R4-R7,LR}
MOV             R6, R0
SUB             SP, SP, #0x1C
LDR             R0, [R3,#0xC]
LDR             R7, =off_6D1648
ADD             R4, R3, #8
CMP             R0, #0
ADD             R5, R3, #0x68 ; 'h'
BEQ             loc_17DF70
LDR             R0, [R5,#8]
STR             R0, [SP,#0x30+var_20]
VLDR            S0, [R5,#0xC]
VNEG.F32        S0, S0
VSTR            S0, [SP,#0x30+var_1C]
LDR             R0, [R5,#0x10]
VLDR            S1, =0.5
STR             R0, [SP,#0x30+var_18]
LDR             R0, [R4,#0x14]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R3, S0; int
STR             R3, [R4,#0x14]
LDR             R2, [R4,#0x18]
LDR             R5, [R6,#4]
LDR             R1, [R4,#4]
CMP             R2, #0
LDR             R2, [R4]
LDR             R0, [R7]
LDR             R4, [R5,#0xC0]
LDR             R6, =0x1D07
ADD             R5, R2, R2,LSL#4
LDR             R0, [R0,#0xA4]; int
MOVNE           R12, #1
MUL             R2, R2, R6
ADD             R5, R0, R5,LSL#2
MOVEQ           R12, #0
ADD             R5, R5, #0x4A000
ADD             R2, R0, R2,LSL#2
ADD             R2, R2, #0x27400
ADD             R7, SP, #0x30+var_28
ADD             R5, R5, #0x2F0
ADD             R2, R2, #0x1D8
STR             R4, [SP,#0x30+var_2C]; float
STR             R12, [SP,#0x30+var_30]; int
STM             R7, {R2,R5}
AND             R1, R1, #0xFF; int
ADD             R2, SP, #0x30+var_20; int
BL              sub_37D208
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4-R7,PC}
LDR             R0, [R6,#4]
ADD             R1, R5, #8
ADD             R0, R0, #0x14000
VLDM            R1, {S0-S1}
MOV             R1, SP
LDR             R2, [R0,#0x180]
LDR             R0, [R7]
BL              sub_1EC694
LDR             R0, [SP,#0x30+var_30]
STR             R0, [SP,#0x30+var_20]
LDR             R0, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_1C]
B               loc_17DEC4
