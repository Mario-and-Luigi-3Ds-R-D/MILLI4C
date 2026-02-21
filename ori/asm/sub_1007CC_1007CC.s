PUSH            {R4-R6,LR}
MOVS            R6, R0
BLX             sub_2FF1F8
LDR             R4, [R0]
MOVS            R5, R0
MOVS            R2, #0xA
MOVS            R1, #0
MOVS            R0, R6
BL              sub_100A84
STR             R4, [R5]
POP             {R4-R6,PC}
