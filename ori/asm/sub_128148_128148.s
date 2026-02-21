PUSH            {R4-R9,LR}
SUBS            R4, R3, #0
SUB             SP, SP, #0xC
MOV             R8, R0
LDR             R9, =0xE0E046C1
MOV             R7, R2
BLT             loc_1281C4
LDR             R1, [R8,#0xC]
LDR             R0, [R8,#0x10]
SUBS            R1, R7, R1
SBCS            R0, R4, R0
BLT             loc_1281D0
LDR             R0, [R8]
BIC             R1, R0, #1
MOV             R0, SP
BL              sub_12095C
ANDS            R1, R0, #0x80000000
BMI             loc_1281A4
LDR             R5, [SP,#0x28+var_24]
LDR             R6, [SP,#0x28+var_28]
STR             R5, [R8,#0x10]
STR             R6, [R8,#0xC]
B               loc_1281B0
MOV             R1, #0
STR             R1, [R8,#0xC]
STR             R1, [R8,#0x10]
MOVS            R1, R0,LSR#31
BNE             loc_1281C8
SUBS            R0, R6, R7
SBCS            R0, R5, R4
BGE             loc_1281D0
MOV             R0, R9
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
STR             R7, [R8,#4]!
MOV             R0, #0
STR             R4, [R8,#4]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
