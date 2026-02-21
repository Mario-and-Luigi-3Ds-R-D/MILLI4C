PUSH            {R4-R7,LR}
MOV             R6, R0
SUB             SP, SP, #0x1C
LDR             R0, [R3,#0xC]
LDR             R7, =off_6D1648
ADD             R5, R3, #8
CMP             R0, #0
ADD             R4, R3, #0x68 ; 'h'
BEQ             loc_17E0B0
LDR             R0, [R4,#8]
STR             R0, [SP,#0x30+var_24]
VLDR            S0, [R4,#0xC]
VNEG.F32        S0, S0
VSTR            S0, [SP,#0x30+var_20]
LDR             R0, [R4,#0x10]
STR             R0, [SP,#0x30+var_1C]
VLDR            S0, [R4,#0x14]
VMOV            R0, S0
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
BEQ             loc_17E038
ADD             R0, R4, #0x18
VLDR            S2, =2.0
VLDR            S1, =4.0
VLDM            R0, {S3-S5}
VMUL.F32        S0, S0, S2
VMUL.F32        S3, S3, S1
VMUL.F32        S2, S4, S2
VMUL.F32        S1, S5, S1
VSTR            S0, [R4,#0x14]
VSTR            S3, [R4,#0x18]
VSTR            S2, [R4,#0x1C]
VSTR            S1, [R4,#0x20]
LDR             R2, [R5,#0x24]
LDR             R12, [R6,#4]
ADD             R4, R4, #0x18
CMP             R2, #0
LDR             R2, [R5]
LDR             R1, [R5,#4]
LDR             R0, [R7]
LDR             R5, [R12,#0xC0]
ADD             R12, R2, R2,LSL#4
VLDM            R4, {S1-S3}
AND             R1, R1, #0xFF; int
LDR             R4, =0x1D07
LDR             R0, [R0,#0xA4]; int
STR             R5, [SP,#0x30+var_30]; float
MOVNE           R3, #1
MUL             R2, R2, R4
ADD             R12, R0, R12,LSL#2
ADD             R12, R12, #0x4A000
ADD             R4, SP, #0x30+var_2C
ADD             R2, R0, R2,LSL#2
ADD             R2, R2, #0x27400
ADD             R12, R12, #0x2F0
ADD             R2, R2, #0x1D8
STM             R4, {R2,R12}
MOVEQ           R3, #0; int
ADD             R2, SP, #0x30+var_24; int
BL              sub_37D320
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4-R7,PC}
LDR             R0, [R6,#4]
ADD             R1, R4, #8
ADD             R0, R0, #0x14000
VLDM            R1, {S0-S1}
MOV             R1, SP
LDR             R2, [R0,#0x180]
LDR             R0, [R7]
BL              sub_1EC694
LDR             R0, [SP,#0x30+var_30]
STR             R0, [SP,#0x30+var_24]
LDR             R0, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_20]
B               loc_17DFEC
