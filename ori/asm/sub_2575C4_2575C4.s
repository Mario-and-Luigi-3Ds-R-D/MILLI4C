PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R8, #0
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
STR             R8, [SP,#0x38+var_38]
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R3, #1
LDR             R0, [R0,#8]
VLDR            S0, =-1.0
STR             R0, [SP,#0x38+var_2C]
ADD             R0, SP, #0x38+var_34
STM             R0, {R1,R2}
VSTR            S0, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
STRB            R8, [SP,#0x38+var_1C]
STR             R8, [SP,#0x38+var_20]
STRB            R8, [SP,#0x38+var_1B]
STR             R5, [SP,#0x38+var_38]
LDM             R6, {R0-R2}
ADD             R8, SP, #0x38+var_34
STM             R8, {R0-R2}
STRB            R3, [SP,#0x38+var_1B]
STR             R7, [SP,#0x38+var_20]
LDR             R0, [R4]
LDR             R1, =0x3E7
ADD             R0, R0, R5
CMP             R0, R1
MOVHI           R0, R1
STR             R0, [R4]
MOV             R1, SP
ADD             R0, R4, #4
BL              sub_5B8CB4
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
