PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R5, R3, #8
ADD             R4, R3, #0x68 ; 'h'
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SUB             SP, SP, #0x28
SXTB            R3, R3
BLX             R12
ADD             R2, R5, #8
MOV             R6, R0
VLDM            R2, {S0-S2}
ADD             R2, SP, #0x38+var_1C
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VSTM            R2, {S0-S2}
LDR             R0, [R4,#0x18]
VMOV            S0, R0
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
BEQ             loc_176538
ADD             R0, R4, #0x1C
VLDR            S1, =2.0
VLDR            S2, =4.0
VLDM            R0, {S3-S5}
VMUL.F32        S0, S0, S1
ADD             R0, R4, #0x20 ; ' '
VMUL.F32        S3, S3, S2
VMUL.F32        S2, S5, S2
VMUL.F32        S1, S4, S1
VSTR            S0, [R4,#0x18]
VSTR            S3, [R4,#0x1C]
VSTM            R0, {S1-S2}
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
VLDR            S0, =0.017453
CMP             R0, #4
BEQ             loc_1765E0
VLDR            S8, [R4,#0x14]
VLDR            S5, [R4,#0x2C]
ADD             R4, R4, #0x18
LDR             R1, [R5,#4]
LDR             R3, [R5,#0x38]
ADD             LR, R5, #0x30 ; '0'
VLDM            R4, {S1-S4}
CMP             R3, #0
MOV             R4, R1,LSL#28
LDR             R2, [R5,#0x28]
AND             R12, R1, #3
VLDM            LR, {S6-S7}
MOV             R3, R1,LSL#29
LDR             R5, [R5,#0x3C]
MOV             R1, R4,LSR#31
MOVEQ           R4, #0
MOVNE           R4, #1
VSTR            S7, [SP,#0x38+var_2C]
CMP             R5, #0
MOV             R0, R6
ADD             LR, SP, #0x38+var_28
SXTB            R2, R2
MOVNE           R5, #1
ADD             R6, R0, #0x1AC
STR             R2, [SP,#0x38+var_34]
STR             R12, [SP,#0x38+var_38]
STM             LR, {R4-R6}
VMUL.F32        S0, S8, S0
VSTR            S6, [SP,#0x38+var_30]
LDR             R2, [R0]
MOV             R3, R3,LSR#31
LDR             R12, [R2,#0x1F4]
ADD             R2, SP, #0x38+var_1C
BLX             R12
B               loc_176654
LDR             R1, [R5,#4]
VLDR            S6, [R4,#0x14]
VLDR            S5, [R4,#0x2C]
ADD             R4, R4, #0x18
LDR             R3, [R5,#0x38]
LDR             R2, [R5,#0x28]
AND             R12, R1, #3
VLDM            R4, {S1-S4}
CMP             R3, #0
MOV             R4, R1,LSL#28
MOV             R3, R1,LSL#29
LDR             R5, [R5,#0x3C]
MOV             R1, R4,LSR#31
MOVNE           R4, #1
MOVEQ           R4, #0
CMP             R5, #0
MOV             R0, R6
ADD             LR, SP, #0x38+var_34
MOVNE           R5, #1
ADD             R6, R0, #0x1AC
SXTB            R2, R2
STR             R12, [SP,#0x38+var_38]
STM             LR, {R2,R4-R6}
VMUL.F32        S0, S6, S0
MOV             R3, R3,LSR#31
LDR             R2, [R0]
LDR             R12, [R2,#0x12C]
ADD             R2, SP, #0x38+var_1C
BLX             R12
ADD             SP, SP, #0x28 ; '('
MOV             R0, #0
POP             {R4-R6,PC}
