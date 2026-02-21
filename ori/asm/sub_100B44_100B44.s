LDR             R3, =(sub_103778+1 - 0x100B4E)
PUSH            {R4-R6,LR}
MOVS            R4, R1
ADD             R3, PC; sub_103778
BL              sub_2FF20E
MOVS            R5, R0
MOVS            R0, R4
BL              sub_101FB8
CMP             R0, #0
BEQ             loc_100B62
MOVS            R0, #0
MVNS            R0, R0
POP             {R4-R6,PC}
MOVS            R0, R5
POP             {R4-R6,PC}
