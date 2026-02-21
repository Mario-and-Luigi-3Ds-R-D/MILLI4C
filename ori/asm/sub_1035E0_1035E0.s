PUSH            {R4,LR}
MOVS            R4, R0
ADDS            R0, #0x10
BL              sub_102AFC
SUBS            R0, #0x10
POP             {R4,PC}
