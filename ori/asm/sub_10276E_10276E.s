PUSH            {R3-R7,LR}
MOVS            R4, R1
MOVS            R6, R2
MOVS            R7, R3
SUBS            R5, R0, R6
B               loc_102780
MOVS            R0, R5
BLX             R7
SUBS            R5, R5, R6
SUBS            R4, R4, #1
BCS             loc_10277A
POP             {R3-R7,PC}
