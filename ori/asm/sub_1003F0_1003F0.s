PUSH            {R4-R6,LR}
MOVS            R4, R0
MOVS            R5, R1
LDR             R0, [R2]
MOVS            R1, R4
BL              sub_2FDF1E
MOVS            R2, R0
MOVS            R3, #0
MOVS            R1, R5
MOVS            R0, R4
BL              sub_100398
POP             {R4-R6,PC}
