PUSH            {R4-R7,LR}
MOV             R1, R2
MOV             R6, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
ADD             R5, R3, #0x68 ; 'h'
ADD             R4, R3, #8
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R6,#4]
SUB             SP, SP, #0x2C
MOV             R0, R6
BLX             R12
LDR             R1, [R4,#4]
MOV             R7, R0
LDR             R0, [R6,#4]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
VCVT.F32.S32    S0, S0
LDR             R6, [R0,#0x184]
ADD             R0, R4, #8
VLDM            R0, {S1-S2}
ADD             R0, SP, #0x40+var_20
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VSTR            S0, [SP,#0x40+var_18]
VSTM            R0, {S1-S2}
LDR             R0, [R4,#0x1C]
VLDR            S1, =0.5
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0x1C]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
VLDR            S0, =0.017453
CMP             R0, #4
BEQ             loc_17D260
LDR             R3, [R4,#0x30]
ADD             R12, R4, #0x28 ; '('
LDR             R2, [R4,#0x14]
CMP             R3, #0
LDR             R1, [R4,#0x20]
VLDR            S2, [R4,#0x1C]
LDR             R4, [R4,#0x34]
VLDR            S5, [R5,#0x18]
VLDR            S1, [R5,#0x24]
MOV             R0, R7
VLDM            R12, {S3-S4}
MOVEQ           R12, #0
MOVNE           R12, #1
CMP             R4, #0
VSTR            S4, [SP,#0x40+var_30]
MOVNE           R4, #1
ADD             R5, R0, #0x1AC
STRD            R4, R5, [SP,#0x40+var_28]
STR             R12, [SP,#0x40+var_2C]
MOV             R3, R2,LSL#29
VSTR            S2, [SP,#0x40+var_40]
AND             R2, R2, #3
SXTB            R1, R1
STR             R1, [SP,#0x40+var_38]
STR             R2, [SP,#0x40+var_3C]
VSTR            S3, [SP,#0x40+var_34]
LDR             R1, [R0]
VMUL.F32        S0, S5, S0
MOV             R3, R3,LSR#31
ADD             R2, SP, #0x40+var_20
LDR             R12, [R1,#0x200]
MOV             R1, R6
BLX             R12
B               loc_17D2D4
LDR             R3, [R4,#0x30]
LDR             R2, [R4,#0x20]
LDR             R1, [R4,#0x14]
CMP             R3, #0
VLDR            S2, [R4,#0x1C]
LDR             R4, [R4,#0x34]
MOV             R0, R7
MOVNE           R12, #1
MOVEQ           R12, #0
ADD             R7, SP, #0x40+var_38
VLDR            S3, [R5,#0x18]
VLDR            S1, [R5,#0x24]
SXTB            R2, R2
CMP             R4, #0
STM             R7, {R2,R12}
MOVNE           R4, #1
ADD             R5, R0, #0x1AC
MOV             R3, R1,LSL#29
STRD            R4, R5, [SP,#0x40+var_30]
AND             R1, R1, #3
VSTR            S2, [SP,#0x40+var_40]
STR             R1, [SP,#0x40+var_3C]
LDR             R1, [R0]
VMUL.F32        S0, S3, S0
MOV             R3, R3,LSR#31
ADD             R2, SP, #0x40+var_20
LDR             R12, [R1,#0x138]
MOV             R1, R6
BLX             R12
ADD             SP, SP, #0x2C ; ','
MOV             R0, #0
POP             {R4-R7,PC}
