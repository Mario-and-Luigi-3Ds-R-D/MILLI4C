PUSH            {R3-R7,LR}
MOV             R5, R1
MOV             R6, R2
MOV             R2, R3
LDRH            R3, [R3]
LDR             R0, [R0,#4]
ADD             R12, R2, #8
SUB             R3, R3, #0x100
SUBS            R3, R3, #0x1A
ADD             R1, R2, #0x68 ; 'h'
MOV             R4, #0
BEQ             loc_18008C
CMP             R3, #1
BEQ             loc_1800E8
CMP             R3, #2
BEQ             loc_180150
CMP             R3, #3
BNE             loc_180194
B               loc_18017C
LDR             R2, [R12],#0x18
VLDR            S3, =2.0
VLDR            S4, =4.0
AND             R5, R2, #0xFF
ADD             R2, R1, #4
VLDR            S6, [R1,#0x10]
VLDR            S5, [R1,#0x14]
LDR             R3, [R12]
LDR             R1, [R0]
VLDM            R2, {S0-S2}
CMP             R3, #0
LDR             R12, [R1,#0x2A8]
ADD             R3, R0, #0x14400
MOVNE           R2, #1
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S4
VMUL.F32        S3, S6, S3
VMUL.F32        S4, S5, S4
MOVEQ           R2, #0
ADD             R3, R3, #0x1C8
MOV             R1, R5
BLX             R12
B               loc_180194
LDR             R2, [R12]
VLDR            S0, [R1,#4]
LDR             R1, [R12,#8]
AND             R5, R2, #0xFF
VLDR            S2, =0.5
BIC             R2, R1, #1
VMOV            S1, R2
TST             R1, #1
LDR             R1, [R12,#0xC]
VCVT.F32.U32    S1, S1
VMUL.F32        S1, S1, S2
VLDRNE          S2, =1.0
VADDNE.F32      S1, S1, S2
CMP             R1, #0
ADD             R1, R0, #0x14400
ADD             R1, R1, #0x1C8
STR             R1, [SP,#0x18+var_18]
LDR             R1, [R0]
MOVNE           R3, #1
MOVEQ           R3, #0
LDR             R12, [R1,#0x2AC]
VCVT.S32.F32    S1, S1
MOV             R1, R5
VMOV            R2, S1
BLX             R12
B               loc_180194
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x1C8
LDR             R0, [R0]
TST             R0, #1
BEQ             loc_180194
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R4, #3
NOP
B               loc_180194
LDR             R1, [R0]
ADD             R2, R0, #0x14400
ADD             R2, R2, #0x1C8
LDR             R3, [R1,#0x2B0]
MOV             R1, #0
BLX             R3
MOV             R0, R4
POP             {R3-R7,PC}
