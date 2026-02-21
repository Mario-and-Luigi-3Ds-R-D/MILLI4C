PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R6, R2
LDRD            R4, R5, [SP,#0x28+arg_0]
MOV             R0, #0
BIC             R2, R1, #0xFF000000
MOV             R7, #0xFFFFFF
STR             R0, [R3]
CMP             R2, R7
STR             R2, [R6]
BEQ             loc_108D48
STR             R0, [SP,#0x28+var_1C]
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
LDR             R0, =dword_6CF8B8
STR             R3, [SP,#0x28+var_28]
ADD             R3, SP, #0x28+var_20
ADD             R2, SP, #0x28+var_1C
LDR             R0, [R0]
BL              sub_11D1FC
CMP             R0, #0
STREQ           R7, [R6]
CMP             R4, #0
LDRNE           R1, [SP,#0x28+var_1C]
STRNE           R1, [R4]
CMP             R5, #0
LDRNE           R1, [SP,#0x28+var_20]
STRNE           R1, [R5]
LDR             R1, [SP,#0x28+var_20]
CMP             R1, #0
BGT             loc_108D4C
MOV             R0, #0
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
