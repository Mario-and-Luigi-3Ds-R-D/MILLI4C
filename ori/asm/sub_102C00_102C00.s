PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R6, R3
LDR             R4, [SP,#0x28+arg_0]
LDR             R7, [SP,#0x28+arg_8]
LDR             R5, [SP,#0x28+arg_C]
LDR             R0, [SP,#0x28+arg_4]
STR             R2, [R4]
B               loc_102C36
LDR             R3, [SP,#0x28+var_20]
SUBS            R2, R6, R1
BL              sub_2FF460
MOVS            R1, R0
ADDS            R0, R0, #2
BEQ             loc_102C4C
CMP             R0, #1
BEQ             loc_102C48
CMP             R0, #2
LDR             R0, [R4]
BEQ             loc_102C2E
ADDS            R0, R0, R1
B               loc_102C30
ADDS            R0, R0, #1
STR             R0, [R4]
LDR             R0, [R5]
ADDS            R0, R0, #2
STR             R0, [R5]
LDR             R1, [R4]
CMP             R1, R6
BCS             loc_102C42
CMP             R0, R7
BCC             loc_102C12
MOVS            R0, #0
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
MOVS            R0, #2
B               loc_102C44
MOVS            R0, #1
B               loc_102C44
