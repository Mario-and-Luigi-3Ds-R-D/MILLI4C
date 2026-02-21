PUSH            {R3-R7,LR}
MOVS            R5, R0
MOVS            R6, R1
MOVS            R7, R2
CMP             R3, #0
BEQ             loc_1009F4
MOVS            R0, R7
MULS            R0, R3
ADDS            R4, R0, R5
SUBS            R4, R4, R7
MOVS            R0, R4
BLX             R6
CMP             R5, R4
BNE             loc_1009EA
MOVS            R0, R5
SUBS            R0, #8
POP             {R3-R7,PC}
