PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R6, R3
LDR             R4, [SP,#0x28+arg_0]
LDR             R7, [SP,#0x28+arg_4]
LDR             R5, [SP,#0x28+arg_C]
STR             R2, [R4]
STR             R7, [R5]
BL              sub_301766
LDR             R1, [SP,#0x28+arg_8]
SUBS            R1, R1, R7
CMP             R0, R1
BGT             loc_102CA0
BL              sub_301766
LDR             R1, [SP,#0x28+arg_8]
SUBS            R7, R1, R0
ADDS            R7, R7, #1
B               loc_102C90
LDRH            R1, [R1]
LDR             R2, [SP,#0x28+var_20]
BL              sub_101404
ADDS            R1, R0, #1
BEQ             loc_102CA6
LDR             R1, [R5]
ADDS            R0, R1, R0
STR             R0, [R5]
LDR             R0, [R4]
ADDS            R0, R0, #2
STR             R0, [R4]
LDR             R1, [R4]
CMP             R1, R6
BCS             loc_102C9C
LDR             R0, [R5]
CMP             R0, R7
BCC             loc_102C78
CMP             R1, R6
BEQ             loc_102CAA
MOVS            R0, #1
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
MOVS            R0, #2
B               loc_102CA2
MOVS            R0, #0
B               loc_102CA2
