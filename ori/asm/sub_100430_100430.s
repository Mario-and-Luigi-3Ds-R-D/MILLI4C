PUSH            {R0-R7,LR}
MOVS            R6, R1
MOVS            R4, R2
SUB             SP, SP, #4
CMP             R4, #0
BEQ             loc_100466
CMP             R4, #1
BEQ             loc_10045A
LDR             R0, [SP,#0x28+var_18]
LSRS            R5, R4, #1
LDR             R2, [SP,#0x28+arg_0]
MULS            R0, R5
ADDS            R7, R0, R6
LDR             R0, [SP,#0x28+var_24]
MOVS            R1, R7
BLX             R2
CMP             R0, #0
BEQ             loc_100470
BGE             loc_100474
MOVS            R4, R5
B               loc_100438
LDR             R2, [SP,#0x28+arg_0]
LDR             R0, [SP,#0x28+var_24]
MOVS            R1, R6
BLX             R2
CMP             R0, #0
BEQ             loc_10046C
MOVS            R0, #0
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
MOVS            R0, R6
B               loc_100468
MOVS            R0, R7
B               loc_100468
LDR             R0, [SP,#0x28+var_18]
SUBS            R4, R4, R5
ADDS            R6, R7, R0
SUBS            R4, R4, #1
B               loc_100438
