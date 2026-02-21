PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R8, #0
MOV             R4, R0
MOV             R5, R1
MOV             R7, R2
MOV             R6, R3
STR             R8, [SP,#0x38+var_38]
BL              sub_4635D8
LDM             R0, {R1,R2}
CMP             R6, #0
LDR             R0, [R0,#8]
VLDR            S0, =-1.0
STR             R0, [SP,#0x38+var_2C]
ADD             R0, SP, #0x38+var_34
STM             R0, {R1,R2}
MOV             R0, #1
VSTR            S0, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
STRB            R8, [SP,#0x38+var_1C]
STR             R8, [SP,#0x38+var_20]
STRB            R8, [SP,#0x38+var_1B]
STR             R5, [SP,#0x38+var_38]
LDM             R7, {R1-R3}
ADD             R8, SP, #0x38+var_34
STM             R8, {R1-R3}
STRB            R6, [SP,#0x38+var_1C]
STRB            R0, [SP,#0x38+var_1B]
BEQ             loc_268DDC
LDR             R0, =0x21E4C
LDR             R0, [R0,R4]
STR             R0, [SP,#0x38+var_28]
MOV             R1, SP
MOV             R0, R4
BL              sub_5B8CB4
ADD             R4, R4, #0x21000
ADD             R4, R4, #0xE50
LDR             R0, =0x3E7
LDR             R1, [R4]
ADD             R1, R1, R5
CMP             R1, R0
MOVLS           R0, R1
STR             R0, [R4]
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
