PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R7, R3, #0x10
ADD             R0, R3, #8
LDR             R5, [R2,#0x70]
LDR             R8, [R3,#8]
ADD             R12, R3, #0x68 ; 'h'
LDM             R7, {R3,R7,R9}
MOV             R6, R1
MOV             R5, R5,LSL#25
MOV             R1, #4
CMP             R1, R5,LSR#29
AND             R1, R7, #0xFF
LDRBNE          R7, [R6,#0x14]
SUB             SP, SP, #0x20
AND             R3, R3, #0xFF
AND             R5, R9, #0xFF
BNE             loc_17E9EC
LDR             R6, [R2,#0x80]
LDRB            R6, [R6,#0xDE]
MOV             R6, R6,LSL#30
MOV             R7, R6,LSR#31
LDR             R9, [R4,#4]
LDR             R6, =off_6D1648
LDR             R0, [R0,#4]
ADD             R7, R9, R7,LSL#2
ADD             R7, R7, #0x13C00
LDR             R6, [R6]
ADD             R7, R7, #0xA4
ADD             R12, R12, #0x14
LDR             R7, [R7]
LDR             R6, [R6,#0xBC]
ADD             R10, SP, #0x40+var_38
ADD             R0, R7, R0,LSL#1
CMP             R9, R6
LDRH            R7, [R0]
LDM             R12, {R0,R9,R12}
MOVNE           R6, #1
MOVEQ           R6, #0
CMP             R3, #0
STM             R10, {R0,R9,R12}
MOV             R12, R2
LDR             R2, [R4,#4]
MOV             R0, R4
MOV             R9, #0
BEQ             loc_17EAEC
ADD             R0, R2, #0x13C00
ADD             R0, R0, #0x108
LDR             R2, [R0,#0x14]
LDRB            R1, [R2,R1]
CMP             R1, #0xFF
BEQ             loc_17EAE0
MOV             R2, #0x67 ; 'g'
LDR             R0, [R0]
SMULBB          R1, R1, R2
ADD             R0, R0, R1,LSL#2
CMP             R0, #0
BEQ             loc_17EAE0
LDR             R1, [R0]
ADD             R2, SP, #0x40+var_2C
LDR             R3, [R1,#0x138]
MOV             R1, R5
BLX             R3
VLDR            S0, [SP,#0x40+var_38]
VLDR            S1, [SP,#0x40+var_2C]
ADD             R0, SP, #0x40+var_38
MOV             R3, R7
VADD.F32        S0, S0, S1
MOV             R2, R6
MOV             R1, R8
VSTR            S0, [SP,#0x40+var_38]
VLDR            S0, [SP,#0x40+var_34]
VLDR            S1, [SP,#0x40+var_28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_34]
VLDR            S0, [SP,#0x40+var_30]
VLDR            S1, [SP,#0x40+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_30]
STR             R0, [SP,#0x40+var_3C]
MOV             R0, R4
STR             R9, [SP,#0x40+var_40]
BL              sub_1834B4
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R10,PC}
LDR             R10, [R0]
SXTB            R3, R1
MOV             R1, R12
LDR             R10, [R10,#0x9C]
BLX             R10
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
B               loc_17EA74
