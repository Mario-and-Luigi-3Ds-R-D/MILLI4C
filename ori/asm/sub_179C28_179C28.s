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
SUB             SP, SP, #0x1C
MOV             R0, R6
BLX             R12
VLDR            S0, [R4,#8]
VLDR            S2, [R4,#0xC]
VLDR            S1, [R4,#0x10]
MOV             R7, R0
VCVT.F32.S32    S0, S0
LDR             R0, [R4,#4]
VCVT.F32.S32    S2, S2
LDR             R1, [R6,#4]
VCVT.F32.S32    S1, S1
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x184]
VSTR            S0, [SP,#0x30+var_20]
VSTR            S2, [SP,#0x30+var_1C]
VSTR            S1, [SP,#0x30+var_18]
VLDR            S1, =2.0
VLDR            S0, [R5,#0x14]
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x14]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
LDR             R1, [R4,#0x20]
CMP             R0, #4
MOV             R0, R7
BEQ             loc_179D10
CMP             R1, #0
LDR             R12, [R4,#0x24]
LDR             R1, [R4,#0x1C]
LDR             R3, [R4,#0x18]
MOVEQ           R2, #0
MOVNE           R2, #1
CMP             R12, #0
VLDR            S0, [R5,#0x14]
ADD             R4, R0, #0x164
MOVNE           R12, #1
STR             R4, [SP,#0x30+var_24]
STMEA           SP, {R1,R2,R12}
ADD             R2, SP, #0x30+var_20
LDR             R1, [R0]
LDR             R12, [R1,#0x1E4]
MOV             R1, R6
BLX             R12
B               loc_179D48
CMP             R1, #0
LDR             R1, [R4,#0x24]
MOVNE           R3, #1
MOVEQ           R3, #0
CMP             R1, #0
VLDR            S0, [R5,#0x14]
MOVNE           R1, #1
ADD             R2, R0, #0x164
STMEA           SP, {R1,R2}
LDR             R1, [R0]
ADD             R2, SP, #0x30+var_20
LDR             R12, [R1,#0xDC]
MOV             R1, R6
BLX             R12
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4-R7,PC}
