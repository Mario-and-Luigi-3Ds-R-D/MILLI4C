PUSH            {R4-R7,LR}
CMP             R3, #0
MOV             R7, R0
MOV             R4, R1
VPUSH           {D8}
SUB             SP, SP, #0xC
MOV             R6, R2
LDR             R5, [SP,#0x28+arg_4]
VLDR            S16, [SP,#0x28+arg_0]
BNE             loc_1DFD3C
ADD             R0, R7, #4
MOV             R1, SP
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R3, [SP,#0x28+var_28]
CMP             R5, #0
BEQ             loc_1DFD4C
CMP             R5, R3
BLS             loc_1DFD50
MOV             R5, R3
LDR             R1, [R4,#8]
MOV             R0, #0
CMP             R1, #0
STRNE           R0, [R6,#0x1C]
LDR             R1, [R4,#0x2C]
CMP             R1, #0
STRNE           R0, [R6,#0x20]
STR             R3, [R4,#0x18]
STR             R7, [R4,#0x10]
VSTR            S16, [R4,#0x34]
STR             R5, [R4,#0x20]
STRH            R0, [R4,#0x24]
STR             R6, [R4,#0x28]
LDR             R0, [R7,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1]
ADD             SP, SP, #0xC
MOV             R1, R4
VPOP            {D8}
POP             {R4-R7,LR}
BX              R2
