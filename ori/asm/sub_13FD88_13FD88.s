PUSH            {R4-R10,LR}
MOVS            R5, R1
MOV             R4, R0
MOV             R6, R2
MOV             R9, R3
VPUSH           {D8}
MOVEQ           R7, #0
VLDR            S16, [SP,#0x28+arg_0]
BEQ             loc_13FDB8
MOV             R0, R1
LDR             R0, [R0,#0xC]
MOV             R7, R0
MOV             R0, R5
LDR             R0, [R0,#8]
LDR             R1, [R6]
MOV             R8, R0
ADD             R0, R4, #0x150
ADD             R2, R4, #0x190
LDR             R3, [R0]
CMP             R3, #0
BEQ             loc_13FECC
ADD             R0, R0, #4
CMP             R0, R2
BNE             loc_13FDD0
CMP             R5, #0
MOV             R10, #0
CMPNE           R7, #0
STR             R10, [R4,#0x4C]
BEQ             loc_13FEC4
CMP             R8, #0
BEQ             loc_13FEC4
LDR             R0, [R4,#0x44]
ADD             R1, R4, #0x44 ; 'D'
STR             R10, [R4,#0x3C]
BIC             R0, R0, #0xD
STR             R10, [R4,#0x18]
STM             R1, {R0,R10}
MOV             R0, R5
LDR             R0, [R0,#0x20]
STR             R0, [R4,#0x28]
ADDS            R0, R4, #0x344
BEQ             loc_13FE44
MOV             R1, #0
MOV             R2, R1
MOV             R3, R1
MOV             R12, R1
STM             R0, {R1-R3,R12}
MOV             R1, #0
MOV             R0, R4
STR             R10, [R4,#8]
BL              sub_13F9EC
MOV             R0, R5
STR             R5, [R4,#0x10]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x20]
LDR             R0, [R8,#0x10]
STR             R0, [R4,#4]
ADD             R0, R4, #0x334
CMP             R0, R6
VSTR            S16, [R4,#0x24]
CMPNE           R0, #0
STR             R9, [R4,#0x1C]
BEQ             loc_13FEA4
LDR             R1, [R6]
STR             R1, [R0]
LDR             R1, [R6,#4]
STR             R1, [R0,#4]
LDR             R1, [R6,#8]
STR             R1, [R0,#8]
LDR             R1, [R6,#0xC]
STR             R1, [R0,#0xC]
ADDS            R0, R4, #0x1BC
BEQ             loc_13FEB8
MOV             R2, #0x7F
MOV             R1, #0
BL              sub_1413FC
LDR             R0, [R4]
ADD             R0, R0, #1
STR             R0, [R4,#8]
VPOP            {D8}
POP             {R4-R10,PC}
STR             R1, [R0]
B               loc_13FDE8
