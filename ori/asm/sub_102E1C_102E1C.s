PUSH            {R4-R6,LR}
MOVS            R5, R1
BL              sub_3018DC
MOVS            R4, R0
LDR             R0, [R0,#4]
CMP             R0, R5
BLE             locret_102E56
LDR             R0, [R4]
LSLS            R5, R5, #3
ADDS            R0, R0, R5
LDR             R0, [R0]
ADDS            R1, R0, #1
BEQ             locret_102E56
BL              sub_1027E0
LDR             R0, [R4]
MOVS            R1, #0
ADDS            R0, R0, R5
MVNS            R1, R1
STR             R1, [R0]
BL              sub_301950
MOVS            R1, R0
LDR             R0, [R4]
ADDS            R0, R0, R5
ADDS            R0, R0, #4
BL              sub_30191C
POP             {R4-R6,PC}
