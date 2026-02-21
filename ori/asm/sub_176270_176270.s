PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R5, R3, #0x68 ; 'h'
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SUB             SP, SP, #0x30
SXTB            R3, R3
BLX             R12
ADD             R2, R4, #8
VLDR            S0, [R4,#0x10]
MOV             R6, R0
VLDM            R2, {S1-S2}
VCVT.F32.S32    S0, S0
ADD             R2, SP, #0x40+var_20
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VSTR            S0, [SP,#0x40+var_18]
VSTM            R2, {S1-S2}
LDR             R0, [R4,#0x18]
VLDR            S1, =0.5
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0x18]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
VLDR            S0, =0.017453
CMP             R0, #4
BEQ             loc_1763A0
LDR             R3, [R4,#0x2C]
LDR             R1, [R4,#4]
ADD             LR, R4, #0x24 ; '$'
CMP             R3, #0
LDR             R2, [R4,#0x1C]
VLDR            S5, [R5,#0x14]
VLDR            S1, [R5,#0x20]
VLDR            S2, [R4,#0x18]
LDR             R4, [R4,#0x30]
MOVEQ           R5, #0
VLDM            LR, {S3-S4}
MOVNE           R5, #1
CMP             R4, #0
MOV             R0, R6
VSTR            S4, [SP,#0x40+var_30]
ADD             LR, SP, #0x40+var_28
MOVNE           R4, #1
ADD             R6, R0, #0x1AC
STR             R5, [SP,#0x40+var_2C]
STM             LR, {R4,R6}
MOV             R12, R1,LSL#28
MOV             R3, R1,LSL#29
ADD             R6, SP, #0x40+var_3C
AND             R1, R1, #3
VSTR            S2, [SP,#0x40+var_40]
SXTB            R2, R2
STM             R6, {R1,R2}
VMUL.F32        S0, S5, S0
VSTR            S3, [SP,#0x40+var_34]
LDR             R1, [R0]
MOV             R12, R12,LSR#31
MOV             R3, R3,LSR#31
ADD             R2, SP, #0x40+var_20
LDR             R4, [R1,#0x1FC]
MOV             R1, R12
BLX             R4
B               loc_176420
LDR             R3, [R4,#0x2C]
LDR             R2, [R4,#0x1C]
LDR             R1, [R4,#4]
CMP             R3, #0
VLDR            S3, [R5,#0x14]
VLDR            S1, [R5,#0x20]
VLDR            S2, [R4,#0x18]
LDR             R4, [R4,#0x30]
MOVNE           R5, #1
MOVEQ           R5, #0
ADD             LR, SP, #0x40+var_38
SXTB            R2, R2
STM             LR, {R2,R5}
CMP             R4, #0
MOV             R0, R6
ADD             LR, SP, #0x40+var_30
MOVNE           R4, #1
ADD             R6, R0, #0x1AC
STM             LR, {R4,R6}
MOV             R12, R1,LSL#28
MOV             R3, R1,LSL#29
AND             R1, R1, #3
VSTR            S2, [SP,#0x40+var_40]
STR             R1, [SP,#0x40+var_3C]
LDR             R1, [R0]
VMUL.F32        S0, S3, S0
MOV             R12, R12,LSR#31
MOV             R3, R3,LSR#31
LDR             R4, [R1,#0x134]
ADD             R2, SP, #0x40+var_20
MOV             R1, R12
BLX             R4
ADD             SP, SP, #0x30 ; '0'
MOV             R0, #0
POP             {R4-R6,PC}
