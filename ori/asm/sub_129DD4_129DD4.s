CMP             R0, #0
BXEQ            LR
PUSH            {R4,LR}
SUB             SP, SP, #0x20 ; ' '
MOV             R4, R0
MOV             R0, SP
BL              sub_133784
LDR             R0, [SP,#0x28+var_28]
STR             R0, [R4]
LDR             R0, [SP,#0x28+var_24]
STR             R0, [R4,#4]
LDR             R0, [SP,#0x28+var_18]
STR             R0, [R4,#0x10]
LDR             R0, [SP,#0x28+var_14]
STR             R0, [R4,#0x14]
LDR             R0, [SP,#0x28+var_20]
STR             R0, [R4,#8]
LDR             R0, [SP,#0x28+var_10]
STR             R0, [R4,#0x18]
LDR             R0, [SP,#0x28+var_1C]
STR             R0, [R4,#0xC]
LDR             R0, [SP,#0x28+var_C]
STR             R0, [R4,#0x1C]
ADD             SP, SP, #0x20 ; ' '
POP             {R4,PC}
