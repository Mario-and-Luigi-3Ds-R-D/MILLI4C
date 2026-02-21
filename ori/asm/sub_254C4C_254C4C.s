MOV             R1, R0
LDR             R0, =off_6CE098
PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
VLDR            S0, =0.0
LDR             R0, [R0]
ADD             R4, R1, #0x13000
ADD             R4, R4, #0x24C
LDR             R0, [R0,#0x8C]
LDR             R0, [R0,#0x190]
STR             R0, [SP,#0x20+var_20]
LDR             R0, =0x129F0
VSTR            S0, [SP,#0x20+var_1C]
LDR             R2, [R1,#0x8C]
LDR             R0, [R0,R1]
VLDR            S0, [R2,#0x194]
LDR             R0, [R0,#-0xC]
VLDR            S1, [R0,#0x90]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R1,#0x4C]
CMP             R0, #0
LDR             R2, [R0]
MOVEQ           R5, #0
STR             R2, [R1,#0x4C]
LDR             R2, [R1,#0x50]
SUB             R2, R2, #1
STR             R2, [R1,#0x50]
BEQ             loc_254CCC
MOV             R1, SP
BL              sub_24BEC8
MOV             R5, R0
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_254CF8
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x20+var_14
BLNE            sub_5CBAC4
STR             R5, [R4]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_254CEC
