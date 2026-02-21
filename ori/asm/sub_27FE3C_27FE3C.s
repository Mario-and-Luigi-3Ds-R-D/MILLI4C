PUSH            {R4-R7,LR}
ADD             R4, R0, #0x21C00
ADD             R4, R4, #0x24C
MOV             R5, R0
LDR             R0, [R4]
SUB             SP, SP, #0x24
MOV             R7, #0
ADD             R0, R0, #1
STR             R0, [R4]
MOV             R6, R1
STR             R7, [SP,#0x38+var_38]
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
STRB            R7, [SP,#0x38+var_1C]
STR             R7, [SP,#0x38+var_20]
STRB            R7, [SP,#0x38+var_1B]
LDR             R0, [R4]
ADD             R7, SP, #0x38+var_34
STR             R0, [SP,#0x38+var_38]
LDM             R6, {R0-R2}
STM             R7, {R0-R2}
MOV             R1, SP
STRB            R3, [SP,#0x38+var_1B]
LDR             R0, [R4]
STR             R0, [SP,#0x38+var_20]
MOV             R0, R5
BL              sub_5B8CB4
ADD             R5, R5, #0x21C00
ADD             R5, R5, #0x248
LDR             R0, [SP,#0x38+var_38]
LDR             R1, [R5]
ADD             R0, R0, R1
LDR             R1, =0x3E7
STR             R0, [R5]
CMP             R0, R1
MOVHI           R0, R1
STR             R0, [R5]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
