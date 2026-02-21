PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
ADD             R4, R3, #8
LDRB            R1, [R1,#0x14]
LDR             R2, =0x13C8C
LDR             R0, [R0,#4]
LDR             R3, [R3,#0xC]
ADD             R2, R2, R1,LSL#2
ADD             R12, R4, #8
LDR             R2, [R0,R2]
LDR             R7, [R4]
SUB             SP, SP, #0x18
ADD             R6, R2, R3,LSL#1
LDM             R12, {R3,R12}
SXTB            R7, R7
LDRB            R2, [R6,#1]
AND             R9, R3, #0xFF
AND             R10, R12, #0xFF
BL              sub_1F343C
VMOV            S1, R9
MOV             R2, R0
VLDR            S0, =0.0
ADD             R0, SP, #0x38+var_2C
CMN             R7, #1
LDR             R9, =off_6D1648
VCVT.F32.U32    S1, S1
VSTR            S1, [SP,#0x38+var_30]
VMOV            S1, R10
VCVT.F32.U32    S1, S1
VSTM            R0, {S0-S1}
VSTR            S0, [SP,#0x38+var_24]
LDREQ           R1, [R5,#4]
BEQ             loc_1774CC
LDR             R0, [R9]
ADD             R0, R0, R7,LSL#2
LDR             R1, [R0,#0xBC]
ADD             R0, SP, #0x38+var_28
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R9]
ADD             R3, SP, #0x38+var_30
LDR             R0, [R0,#0xB0]
BL              loc_195FFC
LDR             R2, [R4]
LDR             R1, [R9]
LDRB            R3, [R8,#0x14]
AND             R7, R2, #0xFF
ADD             R0, R1, #0xB8
LDR             R2, [R1,#0xBC]
LDR             R1, [R5,#4]
MOV             R8, R7,LSL#24
LDRB            R9, [R0]
CMP             R2, R1
ADD             R4, R4, #8
LDRB            R12, [R6,#1]
MOVEQ           R5, #0
MOVNE           R5, #1
LDM             R4, {R1,R2}
MOV             R6, #6
MOV             R7, #8
ORR             R4, R9, #1
AND             R6, R6, R8,ASR#23
AND             R5, R7, R5,LSL#3
MOV             R7, #0x10
AND             R8, R4, #0xF9
AND             R4, R7, R3,LSL#4
ORR             R3, R8, R6
AND             R3, R3, #0xF7
ORR             R3, R3, R5
BIC             R3, R3, #0x10
ORR             R3, R3, R4
STRB            R3, [R0]
STRB            R12, [R0,#1]
STRB            R1, [R0,#2]
STRB            R2, [R0,#3]
ADD             SP, SP, #0x18
MOV             R0, #0
POP             {R4-R10,PC}
