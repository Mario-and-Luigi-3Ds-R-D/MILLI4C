PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R4, R3
MOVS            R6, R1
MOVS            R7, R2
CMP             R1, #0
BEQ             loc_100310
LDR             R5, [SP,#0x28+var_24]
B               loc_10030C
MOVS            R0, R5
BLX             R6
ADDS            R5, R5, R7
SUBS            R4, R4, #1
BCS             loc_100306
LDR             R0, [SP,#0x28+var_24]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
