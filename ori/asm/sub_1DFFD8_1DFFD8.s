PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
CMP             R2, #0
LDR             R5, [SP,#0x20+arg_0]
MOV             R6, R0
MOV             R4, R1
MOV             R7, R3
BNE             loc_1E0018
MOV             R1, SP
ADD             R0, R6, #8
BL              sub_113BF0
LDR             R2, [R6,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
LDR             R2, [SP,#0x20+var_20]
CMP             R5, #0
BEQ             loc_1E0028
CMP             R5, R2
BLS             loc_1E002C
MOV             R5, R2
LDR             R1, [R4,#0x20]
MOV             R0, #0
CMP             R1, #0
STRNE           R0, [R4,#0xC]
ADD             R1, R4, #0x10
STR             R5, [R4,#0x18]
STR             R6, [R4,#8]
STM             R1, {R2,R7}
STRH            R0, [R4,#0x1C]
LDR             R0, [R6,#0x1C]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#4]
ADD             SP, SP, #0xC
MOV             R1, R4
POP             {R4-R7,LR}
BX              R2
