PUSH            {R4,LR}
MOVS            R4, R1
BL              sub_3018DC
LDR             R1, [R0,#4]
CMP             R1, R4
BLE             loc_102E70
LDR             R0, [R0]
LSLS            R1, R4, #3
ADDS            R0, R0, R1
ADDS            R0, R0, #4
POP             {R4,PC}
BL              sub_301950
POP             {R4,PC}
