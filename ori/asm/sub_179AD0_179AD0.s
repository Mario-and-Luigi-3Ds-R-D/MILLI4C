MOV             R1, R2
PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
ADD             R4, R3, #8
SUB             SP, SP, #0x20
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R5,#4]
MOV             R0, R5
BLX             R12
LDR             R1, [R4,#4]
MOV             R6, R0
LDR             R0, [R5,#4]
VLDR            S2, [R4,#8]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
VCVT.F32.S32    S2, S2
LDR             R5, [R0,#0x184]
ADD             R0, R4, #0xC
VLDM            R0, {S0-S1}
ADD             R0, SP, #0x30+var_18
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSTR            S2, [SP,#0x30+var_1C]
VSTM            R0, {S0-S1}
LDR             R0, [R4,#0x14]
VLDR            S1, =0.5
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0x14]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
LDR             R1, [R4,#0x20]
CMP             R0, #4
MOV             R0, R6
BEQ             loc_179BDC
CMP             R1, #0
LDR             R2, [R4,#0x18]
LDR             R1, [R4,#0x1C]
LDR             R3, [R4,#0x14]
LDR             R4, [R4,#0x24]
MOVEQ           R12, #0
MOVNE           R12, #1
ADD             LR, SP, #0x30+var_2C
STR             R2, [SP,#0x30+var_30]
STM             LR, {R1,R12}
CMP             R4, #0
ADD             LR, SP, #0x30+var_24
MOVNE           R4, #1
ADD             R6, R0, #0x164
STM             LR, {R4,R6}
ADD             R2, SP, #0x30+var_1C
LDR             R1, [R0]
LDR             R12, [R1,#0x1EC]
MOV             R1, R5
BLX             R12
B               loc_179C14
LDR             R2, [R4,#0x24]
CMP             R1, #0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R2, #0
LDR             R3, [R4,#0x14]
MOVNE           R2, #1
ADD             R12, R0, #0x164
STMEA           SP, {R1,R2,R12}
ADD             R2, SP, #0x30+var_1C
LDR             R1, [R0]
LDR             R12, [R1,#0xEC]
MOV             R1, R5
BLX             R12
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R6,PC}
