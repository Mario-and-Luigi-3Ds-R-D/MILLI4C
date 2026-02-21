PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
LDR             R0, [SP,#0x28+arg_0]
MOV             R5, R1
MOV             R7, R2
ADD             R1, R0, #0x800
ADD             R0, R0, #0x800
ADD             R1, R1, #0x2C ; ','
ADD             R0, R0, #0x38 ; '8'
VLDM            R1, {S0-S2}
MOV             R6, R3
VLDM            R0, {S3-S5}
ADD             R0, SP, #0x28+var_24
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VSTM            R0, {S0-S2}
LDR             R1, [R5,#8]
LDR             R1, [R1]
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0xA0]
TST             R1, #1
BEQ             loc_1F0E80
LDR             R2, =0x111
MOV             R1, #0
BL              sub_2D3F94
VLDR            S0, =0.0
LDR             R0, =0x20004
MOV             R2, #0
VMOV.F32        S1, S0
MOV             R1, R7
BL              sub_1459F8
LDR             R0, [R4,#0xC4]
MOV             R1, #2
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x14]
ORR             R2, R2, #0x2000000
STR             R2, [R0,#0x14]
LDRB            R0, [R6,#0xDE]
BIC             R0, R0, #8
STRB            R0, [R6,#0xDE]
LDR             R0, [R5]
STRB            R1, [R0,#0xF]
MOV             R0, #8
STR             R0, [R4,#0x154]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
MOV             R2, #0xE2
MOV             R1, #0
BL              sub_2D3F94
NOP
NOP
B               loc_1F0E2C
