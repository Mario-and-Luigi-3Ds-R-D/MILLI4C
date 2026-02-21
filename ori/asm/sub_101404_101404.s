PUSH            {R2-R6,LR}
MOVS            R5, R0
MOVS            R4, R1
CMP             R2, #0
BNE             loc_101418
MOVS            R1, #6
MOVS            R0, #0
NOP
NOP
MOVS            R2, R0
MOV             R0, SP
MOVS            R1, R4
BL              sub_2FF23E
MOVS            R4, R0
ADDS            R0, R0, #1
BEQ             loc_101438
CMP             R5, #0
BEQ             loc_101434
MOV             R1, SP
MOVS            R2, R4
MOVS            R0, R5
BLX             sub_2FF3D8
MOVS            R0, R4
POP             {R2-R6,PC}
BLX             sub_2FF1F8
MOVS            R1, #4
STR             R1, [R0]
B               loc_101434
