PUSH            {R4-R8,LR}
LDR             R1, =byte_6CF859
VPUSH           {D8}
SUB             SP, SP, #0x10
LDRB            R1, [R1]
CMP             R1, #0
BEQ             loc_21E2C8
CMP             R1, #1
BEQ             loc_21E2D0
CMP             R1, #3
BEQ             loc_21E2C8
CMP             R1, #4
BNE             loc_21E2D4
B               loc_21E2D0
MOV             R6, #0
B               loc_21E2D4
MOV             R6, #1
LDR             R1, =dword_6CF85C
VLDR            S1, =0.0039216
LDR             R1, [R1]
AND             R12, R1, #0xFF
MOV             R2, R1,LSL#16
MOV             R3, R1,LSL#8
MOV             R2, R2,LSR#24
VMOV            S4, R12
MOV             R3, R3,LSR#24
VMOV            S0, R2
MOV             R1, R1,LSR#24
VMOV            S2, R3
VMOV            S3, R1
VCVT.F32.S32    S4, S4
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S3, S3
VMUL.F32        S4, S4, S1
VMUL.F32        S0, S0, S1
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S3, S1
VSTR            S4, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
VSTR            S2, [SP,#0x30+var_28]
VSTR            S1, [SP,#0x30+var_24]
LDR             R4, [R0,#8]
CMP             R4, #0
BEQ             loc_21E464
LDR             R7, =byte_6CF858
LDR             R8, =off_6D1648
VLDR            S16, =0.0
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_21E458
LDR             R0, [R4,#0x464]
TST             R0, #0x40000
BEQ             loc_21E37C
LDR             R0, [R4]
LDRSB           R1, [R7]
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x464]
TST             R0, #0x20000
BEQ             loc_21E3A4
LDR             R0, [R4,#0x8F4]
TST             R0, #0x800
BEQ             loc_21E3A4
LDR             R0, [R4,#0x7FC]
MOV             R2, SP
MOV             R1, R6
BL              sub_146638
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_21E458
LDR             R0, [R4,#0x8F4]
TST             R0, #0x20
MOVNE           R0, R4
BLNE            sub_593B78
LDR             R0, [R4,#0x8F4]
TST             R0, #4
BEQ             loc_21E450
MOV             R0, R4
BL              sub_593E68
CMP             R0, #0
NOP
BEQ             loc_21E450
MOV             R1, #0
STRB            R1, [R4,#0x648]
LDRB            R2, [R4,#0xDE]
MOV             R0, R4
MOV             R5, R4
BIC             R2, R2, #1
STRB            R2, [R4,#0xDE]
LDR             R2, [R4]
LDR             R2, [R2,#0x84]
BLX             R2
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x8D8
MOV             R3, #1
ADD             R2, R5, #0x108
LDRH            R1, [R1,R5]
BL              sub_168114
LDR             R1, [R5,#0x8D4]
LDR             R1, [R1,#0xA4]
STR             R1, [R0,#0x40]
LDR             R0, [R5,#0x8DC]
CMN             R0, #1
BEQ             loc_21E450
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R5
VMOV.F32        S1, S0
BL              sub_1459F8
MOV             R0, R4
BL              sub_5938EC
LDR             R4, [R4,#0xC]
CMP             R4, #0
BNE             loc_21E350
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
