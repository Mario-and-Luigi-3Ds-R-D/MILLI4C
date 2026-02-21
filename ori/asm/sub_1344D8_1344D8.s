PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x18]
ADD             R5, R4, #0x28 ; '('
CMP             R0, R5
BCS             locret_13454C
ADD             R0, R4, #4
LDR             R0, [R0,#4]
CMP             R0, #0
BGT             locret_13454C
LDR             R0, [R4,#0x18]
LDRSH           R1, [R0,#2]
ADD             R0, R0, #4
STR             R0, [R4,#0x18]
CMP             R1, #0
BNE             loc_134520
CMP             R0, R5
BCC             loc_134500
CMP             R0, R5
LDRSHCC         R0, [R0,#4]
LDRSHCS         R0, [R4,#0x28]
VLDR            S0, =0.007874
MOV             R2, #0
VMOV            S1, R0
ADD             R0, R4, #4
POP             {R4-R6,LR}
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
B               sub_140098
POP             {R4-R6,PC}
