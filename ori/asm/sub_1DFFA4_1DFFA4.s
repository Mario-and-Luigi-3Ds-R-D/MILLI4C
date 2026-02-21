PUSH            {R4,LR}
SUB             SP, SP, #8
MOV             R4, R0
MOV             R1, SP
ADD             R0, R0, #8
BL              sub_113BF0
LDR             R2, [R4,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
LDR             R0, [SP,#0x10+var_10]
ADD             SP, SP, #8
POP             {R4,PC}
