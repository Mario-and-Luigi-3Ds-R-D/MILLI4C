PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x28
LDRB            R0, [R0,#0xD]
CMP             R0, #8
BNE             loc_1FE6A8
ADD             R0, R4, #0x10
BL              sub_5C55B8
CMP             R0, #0x12
BEQ             loc_1FE790
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xC
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R0, =off_6CDC90
VLDR            S16, =0.0
VLDR            S0, =1.0
ADD             R2, SP, #0x40+var_34
LDR             R0, [R0]
MOV             R1, #1
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R5, [R0]
LDR             R0, [R5,#0x2A8]
STR             R0, [SP,#0x40+var_40]
VMOV            S17, R0
VSTR            S16, [SP,#0x40+var_34]
VSTR            S0, [SP,#0x40+var_30]
VSTR            S16, [SP,#0x40+var_2C]
LDR             R0, [R5,#0x2AC]
VMOV.F32        S0, S16
VMOV.F32        S1, S17
VMOV            S2, R0
STR             R0, [SP,#0x40+var_3C]
ADD             R0, R4, #0x1EC
BL              sub_5A28C4
LDR             R0, [R5,#0x2B0]
VMOV.F32        S0, S17
ADD             R2, SP, #0x40+var_28
STR             R0, [SP,#0x40+var_3C]
VSTR            S16, [SP,#0x40+var_28]
VSTR            S16, [SP,#0x40+var_24]
STR             R0, [SP,#0x40+var_20]
MOV             R1, #0
ADD             R0, R4, #0x1EC
BL              sub_5A2B20
LDR             R5, [R4]
MOV             R6, #0
LDR             R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_1FE758
BL              sub_533330
STR             R6, [R5,#0x14]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1FE77C
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R5,#4]
MOV             R0, #6
STRB            R0, [R4,#0xD]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R6,PC}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x13
ADD             R0, R4, #0x10
BL              sub_14C548
NOP
NOP
B               loc_1FE73C
