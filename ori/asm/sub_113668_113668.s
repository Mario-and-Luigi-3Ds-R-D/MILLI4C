PUSH            {R4,LR}
SUB             SP, SP, #8
MOV             R2, R0
MOV             R3, R1
BL              sub_11D858
VCVT.F64.F32    D0, S0
MOV             R4, R0
MOV             R1, #3
VSTR            D0, [SP,#0x10+var_10]
LDR             R0, [R2,#0xC]
MOV             R2, R4
BL              sub_11CDA0
ADD             SP, SP, #8
MOV             R0, R4
POP             {R4,PC}
