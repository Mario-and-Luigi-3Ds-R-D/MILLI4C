PUSH            {R4,LR}
MOVS            R4, R0
LDR             R0, [R2]
MOVS            R1, R4
BL              sub_2FDF1E
MOVS            R2, R0
MOVS            R3, #0
MOVS            R0, R4
BL              sub_100320
POP             {R4,PC}
