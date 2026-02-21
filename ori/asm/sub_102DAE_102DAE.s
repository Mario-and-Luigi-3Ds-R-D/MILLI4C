PUSH            {R1-R7,LR}
MOVS            R5, R1
MOVS            R7, R2
LDR             R1, [R0]
MOVS            R4, #0
MVNS            R4, R4
MOVS            R2, #6
MOV             R0, SP
BL              sub_301784
LDR             R0, [R5]
MOVS            R1, R4
BL              sub_1027BC
MOVS            R6, R0
ADDS            R0, R0, #1
BEQ             loc_102DF6
BL              sub_3018DC
LDR             R1, [R0,#4]
LDR             R4, [R0]
MOVS            R5, R0
LSLS            R0, R1, #3
ADDS            R0, R4, R0
CMP             R0, R4
BNE             loc_102E00
ADDS            R1, R1, #1
MOVS            R0, R5
BL              sub_103804
LDR             R1, [R5,#4]
LDR             R0, [R5]
LSLS            R1, R1, #3
ADDS            R4, R0, R1
SUBS            R4, #8
B               loc_102E0A
MOV             R0, SP
BL              sub_3017BC
MOVS            R0, R4
POP             {R1-R7,PC}
LDR             R2, [R4]
ADDS            R2, R2, #1
BEQ             loc_102E0A
ADDS            R4, #8
B               loc_102DDE
MOVS            R1, R7
ADDS            R0, R4, #4
STR             R6, [R4]
BL              sub_30191C
LDR             R0, [R5]
SUBS            R0, R4, R0
ASRS            R4, R0, #3
B               loc_102DF6
