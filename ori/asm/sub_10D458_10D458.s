PUSH            {R4-R7,LR}
CMP             R3, #0
MOV             R6, R0
MOV             R4, R1
VPUSH           {D8}
SUB             SP, SP, #0xC
MOV             R7, R2
LDR             R5, [SP,#0x28+arg_4]
VLDR            S16, [SP,#0x28+arg_0]
BNE             loc_10D4A0
MOV             R1, SP
ADD             R0, R6, #8
BL              sub_113BF0
LDR             R2, [R6,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
LDR             R3, [SP,#0x28+var_28]
CMP             R5, #0
BEQ             loc_10D4B0
CMP             R5, R3
BLS             loc_10D4B4
MOV             R5, R3
STR             R3, [R4,#0x10]
STRD            R6, R7, [R4,#8]
VSTR            S16, [R4,#0x14]
MOV             R0, #0
STR             R5, [R4,#0x18]
STRH            R0, [R4,#0x1C]
LDR             R0, [R6,#0x1C]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#4]
ADD             SP, SP, #0xC
MOV             R1, R4
VPOP            {D8}
POP             {R4-R7,LR}
BX              R2
