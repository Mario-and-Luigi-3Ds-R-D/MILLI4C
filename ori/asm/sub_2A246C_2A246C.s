PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R5, R2
LDR             R4, [SP,#0x28+arg_4]
LDR             R8, [SP,#0x28+arg_0]
MOV             R2, #1
ADD             R7, R0, #4
STRB            R2, [R0]
CMP             R1, R7
VLDMNE          R1, {S0-S5}
MOV             R6, R3
VSTMNE          R7, {S0-S5}
CMP             R5, #0
BEQ             loc_2A2514
TST             R5, #1
BEQ             loc_2A24BC
MOV             R1, R7
MOV             R2, R3
MOV             R0, R1
BL              sub_570ED8
TST             R5, #2
BEQ             loc_2A2514
TST             R5, #1
MOVEQ           R3, R4
BEQ             loc_2A2504
VLDR            S0, [R4]
VLDR            S1, [R6]
MOV             R3, SP
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_28]
VLDR            S0, [R4,#4]
VLDR            S1, [R6,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_24]
VLDR            S0, [R4,#8]
VLDR            S1, [R6,#8]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_20]
MOV             R1, R7
MOV             R2, R8
MOV             R0, R1
BL              sub_570AAC
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
