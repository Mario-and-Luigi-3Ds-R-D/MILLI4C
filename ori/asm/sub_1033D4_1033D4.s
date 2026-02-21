PUSH            {R4,LR}
MOVS            R4, R0
MOVS            R0, #0
MVNS            R0, R0
STR             R0, [R4]
BL              sub_301950
MOVS            R1, R0
ADDS            R0, R4, #4
BL              sub_10357E
SUBS            R0, R0, #4
POP             {R4,PC}
