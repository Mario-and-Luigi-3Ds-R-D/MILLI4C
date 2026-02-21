MOVS            R3, #0
MOVS            R2, R3
MOVS            R1, R3
MOVS            R0, R3
PUSH            {R4,LR}
BL              sub_2FF460
CMP             R0, #0
BEQ             loc_102BF0
MOVS            R0, #0
MVNS            R0, R0
POP             {R4,PC}
MOVS            R0, #1
POP             {R4,PC}
