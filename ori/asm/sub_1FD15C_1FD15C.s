PUSH            {R4-R7,LR}
SUB             SP, SP, #0x24
MOV             R7, #0
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
STR             R7, [SP,#0x38+var_38]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
VLDR            S0, =-1.0
STR             R0, [SP,#0x38+var_2C]
ADD             R0, SP, #0x38+var_34
STM             R0, {R1,R2}
MOV             R0, #1
VSTR            S0, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
STRB            R7, [SP,#0x38+var_1C]
STR             R7, [SP,#0x38+var_20]
STRB            R7, [SP,#0x38+var_1B]
STR             R5, [SP,#0x38+var_38]
LDM             R6, {R1-R3}
ADD             R7, SP, #0x38+var_34
STM             R7, {R1-R3}
MOV             R1, SP
STRB            R0, [SP,#0x38+var_1B]
ADD             R0, R4, #4
BL              sub_5B8CB4
LDR             R1, [R4]
LDR             R0, =0x3E7
ADD             R1, R1, R5
CMP             R1, R0
MOVCC           R0, R1
STR             R0, [R4]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
