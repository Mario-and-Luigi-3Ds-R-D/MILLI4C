PUSH            {R4-R7,LR}
MOV             R1, R2
MOV             R6, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
ADD             R4, R3, #8
ADD             R5, R3, #0x68 ; 'h'
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R6,#4]
SUB             SP, SP, #0x2C
MOV             R0, R6
BLX             R12
VLDR            S2, [R4,#8]
VLDR            S1, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VCVT.F32.S32    S2, S2
LDR             R1, [R4,#4]
MOV             R7, R0
VCVT.F32.S32    S1, S1
LDR             R0, [R6,#4]
VCVT.F32.S32    S0, S0
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x184]
VSTR            S2, [SP,#0x40+var_24]
VSTR            S1, [SP,#0x40+var_20]
VLDR            S1, =2.0
VSTR            S0, [SP,#0x40+var_1C]
VLDR            S0, [R5,#0x1C]
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x1C]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
LDR             R2, [R4,#0x20]
LDR             R3, [R4,#0x30]
VLDR            S0, =0.017453
CMP             R0, #4
BEQ             loc_17D408
ADD             R12, R4, #0x28 ; '('
LDR             R1, [R4,#0x14]
CMP             R3, #0
VLDM            R12, {S3-S4}
MOVEQ           R12, #0
LDR             R4, [R4,#0x34]
VLDR            S5, [R5,#0x18]
VLDR            S1, [R5,#0x1C]
VLDR            S2, [R5,#0x24]
MOVNE           R12, #1
MOV             R3, R1,LSL#29
VSTR            S4, [SP,#0x40+var_34]
CMP             R4, #0
MOV             R0, R7
AND             R1, R1, #3
SXTB            R2, R2
STR             R12, [SP,#0x40+var_30]
MOVNE           R4, #1
ADD             R5, R0, #0x1AC
STMEA           SP, {R1,R2}
STRD            R4, R5, [SP,#0x40+var_2C]
VSTR            S3, [SP,#0x40+var_38]
LDR             R1, [R0]
VMUL.F32        S0, S5, S0
MOV             R3, R3,LSR#31
ADD             R2, SP, #0x40+var_24
LDR             R12, [R1,#0x1F8]
MOV             R1, R6
BLX             R12
B               loc_17D468
LDR             R1, [R4,#0x14]
CMP             R3, #0
LDR             R4, [R4,#0x34]
MOVNE           R12, #1
MOV             R3, R1,LSL#29
MOVEQ           R12, #0
VLDR            S3, [R5,#0x18]
VLDR            S1, [R5,#0x1C]
VLDR            S2, [R5,#0x24]
AND             R1, R1, #3
SXTB            R2, R2
CMP             R4, #0
MOV             R0, R7
STMEA           SP, {R1,R2,R12}
MOVNE           R4, #1
ADD             R5, R0, #0x1AC
STRD            R4, R5, [SP,#0x40+var_34]
LDR             R1, [R0]
VMUL.F32        S0, S3, S0
MOV             R3, R3,LSR#31
ADD             R2, SP, #0x40+var_24
LDR             R12, [R1,#0x130]
MOV             R1, R6
BLX             R12
ADD             SP, SP, #0x2C ; ','
MOV             R0, #0
POP             {R4-R7,PC}
