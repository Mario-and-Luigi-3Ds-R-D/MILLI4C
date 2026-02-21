CMP             R1, #1
MOVLT           R1, #1
VMOV            S0, R1
PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R4, #4
VCVT.F32.S32    S0, S0
BL              sub_140038
LDR             R1, [R4]
MOV             R1, R1,LSL#30
ORR             R5, R0, R1,LSR#31
MOV             R0, R4
BL              sub_1344D8
LDR             R0, [R4]
BIC             R0, R0, #2
STR             R0, [R4]
MOV             R0, R5
POP             {R4-R6,PC}
