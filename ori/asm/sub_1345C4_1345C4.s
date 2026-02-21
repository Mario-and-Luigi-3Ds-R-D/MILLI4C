PUSH            {R4-R6,LR}
CMP             R0, R1
MOV             R4, R0
VPUSH           {D8}
BEQ             loc_134670
MOV             R2, #0x2C ; ','
BL              sub_13F244
ADD             R0, R4, #0x1C
ADD             R6, R4, #0x28 ; '('
STR             R0, [R4,#0x18]
LDRSH           R5, [R0,#2]
LDRSH           R1, [R0]
CMP             R5, #0
BNE             loc_13460C
ADD             R0, R0, #4
CMP             R0, R6
STR             R0, [R4,#0x18]
BCC             loc_1345EC
VMOV            S0, R1
VLDR            S16, =0.007874
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_140098
LDR             R0, [R4,#0x18]
MOV             R2, #0
MOV             R1, R5
CMP             R0, R6
LDRSHCC         R0, [R0,#4]
LDRSHCS         R0, [R4,#0x28]
VMOV            S0, R0
ADD             R0, R4, #4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_140098
MOV             R0, R4
NOP
BL              sub_1344D8
LDR             R0, [R4]
ORR             R0, R0, #2
STR             R0, [R4]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
