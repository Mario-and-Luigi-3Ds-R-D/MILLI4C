PUSH            {R4-R8,LR}
MOV             R6, R2
ADD             R2, R0, #0x21C00
ADD             R2, R2, #0x248
MOV             R7, R0
LDR             R0, [R2]
MOV             R4, R1
LDR             R1, =0x3E7
ADD             R0, R0, R4
SUB             SP, SP, #0x20
CMP             R0, R1
STR             R0, [R2]
MOVHI           R0, R1
MOV             R8, #0
STR             R0, [R2]
MOV             R5, R3
STR             R8, [SP,#0x38+var_38]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x38+var_34
LDR             R0, [R0,#8]
VLDR            S0, =-1.0
CMP             R5, #0
STR             R0, [SP,#0x38+var_2C]
STM             R3, {R1,R2}
MOV             R0, #1
VSTR            S0, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
STRB            R8, [SP,#0x38+var_1C]
STR             R8, [SP,#0x38+var_20]
STRB            R8, [SP,#0x38+var_1B]
STR             R4, [SP,#0x38+var_38]
LDM             R6, {R1-R3}
ADD             R8, SP, #0x38+var_34
STM             R8, {R1-R3}
STRB            R5, [SP,#0x38+var_1C]
STRB            R0, [SP,#0x38+var_1B]
BEQ             loc_27FFC0
LDR             R0, =off_6CDF98
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
LDR             R0, [R0,#0x4E0]
STR             R0, [SP,#0x38+var_28]
MOV             R1, SP
MOV             R0, R7
BL              sub_5B8CB4
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
