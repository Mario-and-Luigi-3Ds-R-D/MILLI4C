PUSH            {R4,LR}
MOVS            R4, R0
LDR             R0, =off_6C3CA8
STR             R0, [R4]
MOVS            R0, R4
ADDS            R0, #0x14
BL              sub_3015EC
SUBS            R0, #0x14
POP             {R4,PC}
