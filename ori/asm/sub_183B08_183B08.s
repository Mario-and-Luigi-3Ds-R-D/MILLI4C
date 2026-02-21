PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R5, R3, #8
ADD             R4, R3, #0x68 ; 'h'
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SUB             SP, SP, #0x20
SXTB            R3, R3
BLX             R12
VLDR            S1, [R5,#8]
VLDR            S0, [R5,#0xC]
VLDR            S2, [R5,#0x10]
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S2, S2
MOV             R6, R0
VSTR            S1, [SP,#0x30+var_20]
VSTR            S0, [SP,#0x30+var_1C]
VSTR            S2, [SP,#0x30+var_18]
VLDR            S0, [R4,#0x14]
VMOV            R0, S0
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
BEQ             loc_183BA0
ADD             R0, R4, #0x1C
VLDR            S1, =2.0
VLDR            S3, [R4,#0x18]
VLDR            S2, =4.0
VMUL.F32        S0, S0, S1
VLDM            R0, {S4-S5}
VMUL.F32        S3, S3, S2
VMUL.F32        S1, S4, S1
VMUL.F32        S2, S5, S2
VSTR            S0, [R4,#0x14]
VSTR            S3, [R4,#0x18]
VSTM            R0, {S1-S2}
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
LDR             R1, [R5,#4]
CMP             R0, #4
BEQ             loc_183C0C
ADD             R4, R4, #0x14
LDR             R12, [R5,#0x2C]
LDR             R2, [R5,#0x28]
LDR             R3, [R5,#0x24]
MOV             R0, R6
VLDM            R4, {S0-S3}
MOVS            R4, R12
MOVNE           R4, #1
LDR             R12, [R5,#0x30]
ADD             R5, R0, #0x164
STR             R5, [SP,#0x30+var_24]
CMP             R12, #0
MOVNE           R12, #1
STMEA           SP, {R2,R4,R12}
AND             R1, R1, #0xFF
LDR             R2, [R0]
LDR             R12, [R2,#0x1E0]
ADD             R2, SP, #0x30+var_20
BLX             R12
B               loc_183C50
LDR             R2, [R5,#0x2C]
ADD             R4, R4, #0x14
MOV             R0, R6
CMP             R2, #0
LDR             R2, [R5,#0x30]
MOVNE           R3, #1
MOVEQ           R3, #0
VLDM            R4, {S0-S3}
CMP             R2, #0
MOVNE           R2, #1
ADD             R12, R0, #0x164
STMEA           SP, {R2,R12}
LDR             R2, [R0]
AND             R1, R1, #0xFF
LDR             R12, [R2,#0xD4]
ADD             R2, SP, #0x30+var_20
BLX             R12
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R6,PC}
