PUSH            {R4-R8,LR}
SUB             SP, SP, #8
CMP             R3, #0
LDR             R5, [SP,#0x20+arg_4]
LDR             R6, [SP,#0x20+arg_0]
MOV             R7, R0
MOV             R4, R1
MOV             R8, R2
BEQ             loc_158B2C
CMP             R5, #0
BEQ             loc_158AD4
CMP             R5, R3
BLS             loc_158AD8
MOV             R5, R3
LDR             R1, [R4,#8]
MOV             R0, #0
CMP             R1, #0
STRNE           R0, [R4,#0x14]
STR             R0, [R4,#0x28]
STR             R6, [R4,#0x1C]
STR             R7, [R4,#0x10]
MOV             R1, #1
STR             R8, [R4,#0x18]
STRB            R1, [R4,#0x2C]
STR             R3, [R4,#0x48]
STR             R5, [R4,#0x20]
STRH            R0, [R4,#0x24]
LDR             R0, [R7,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1]
ADD             SP, SP, #8
MOV             R1, R4
POP             {R4-R8,LR}
BX              R2
ADD             R0, R7, #4
MOV             R1, SP
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x20+var_20]
CMP             R0, R6
SUBHI           R3, R0, R6
BLS             loc_158B58
B               loc_158AC4
ADD             SP, SP, #8
POP             {R4-R8,PC}
