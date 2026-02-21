PUSH            {R4-R11,LR}
MOV             R6, R1
MOV             R4, R0
SUB             SP, SP, #0x14
ADD             R5, R4, #0x10000
LDR             R1, =0x137F1
LDR             R0, [SP,#0x38+arg_0]
MOV             R9, R2
ADD             R8, R4, R1
MOV             R10, R3
LDRB            R1, [R8]
MOV             R11, #0
ADD             R5, R5, #0x3700
CMP             R1, R6
CMPEQ           R0, #0
BNE             loc_1C8D84
LDR             R0, =0x136D5
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1C8E50
LDR             R0, =unk_6580B4
LDRB            R7, [R0,R6]
LDR             R0, =0x137E0
MOV             R2, R7
LDR             R1, [R0,R4]
MOV             R0, R4
BL              sub_4A0DB0
TST             R7, #4
NOP
BNE             loc_1C8DBC
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x3E4
MOV             R0, R4
BL              sub_4A16C0
TST             R7, #2
BNE             loc_1C8E3C
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x3EC
VLDR            S0, =0.0039216
LDR             R1, [R1]
MOV             R2, SP
MOV             R0, R4
AND             R12, R1, #0xFF
MOV             R3, R1,LSL#16
MOV             R7, R1,LSL#8
MOV             R3, R3,LSR#24
VMOV            S3, R12
MOV             R7, R7,LSR#24
VMOV            S1, R3
MOV             R1, R1,LSR#24
VMOV            S4, R7
VMOV            S2, R1
VCVT.F32.S32    S3, S3
MOV             R1, R2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S4, S4
VCVT.F32.S32    S2, S2
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S4, S4, S0
VMUL.F32        S0, S2, S0
VSTR            S3, [SP,#0x38+var_38]
VSTR            S1, [SP,#0x38+var_34]
VSTR            S4, [SP,#0x38+var_30]
VSTR            S0, [SP,#0x38+var_2C]
BL              sub_4A1768
LDR             R0, =0xFFFEC92B
STRH            R11, [R5,#0xF4]
SUB             R0, R4, R0
STRB            R11, [R0]
B               loc_1C8E60
LDRH            R0, [R5,#0xF4]
LDRH            R1, [R5,#0xF6]
ADD             R0, R0, R1
STRH            R0, [R5,#0xF4]
STRB            R6, [R8]
LDRB            R0, [R4,#0x29C]
CMP             R0, R9
BEQ             loc_1C8E7C
MOV             R1, R9
MOV             R0, R4
BL              sub_111BEC
LDR             R0, =0xFFFEC80E
STRH            R11, [R5,#0xF6]
STRH            R10, [R5,#0xF8]
SUB             R0, R4, R0
STRB            R11, [R0]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
