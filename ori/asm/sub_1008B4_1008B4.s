PUSH            {R4-R6,LR}
MOVS            R4, R0
MOVS            R5, R1
MOVS            R0, R2
BNE             loc_1008C4
MOVS            R1, #4
NOP
NOP
MOVS            R3, R0
MOVS            R2, R5
MOVS            R1, R4
MOVS            R0, #0
BL              sub_2FF460
POP             {R4-R6,PC}
