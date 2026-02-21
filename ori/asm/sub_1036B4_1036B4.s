PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R4, R3
MOVS            R6, R1
MOVS            R7, R2
LDR             R0, [SP,#0x28+arg_0]
CMP             R0, #0
BEQ             loc_1036D8
LDR             R5, [SP,#0x28+var_24]
B               loc_1036D4
LDR             R2, [SP,#0x28+arg_0]
MOVS            R1, R6
MOVS            R0, R5
BLX             R2
ADDS            R5, R5, R7
ADDS            R6, R6, R7
SUBS            R4, R4, #1
BCS             loc_1036C8
LDR             R0, [SP,#0x28+var_24]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
