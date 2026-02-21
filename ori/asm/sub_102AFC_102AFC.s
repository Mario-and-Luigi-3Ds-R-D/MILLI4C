PUSH            {R4,LR}
MOVS            R4, R0
ADDS            R0, #0xC
BL              sub_3015EC
MOVS            R4, R0
SUBS            R4, #0xC
SUBS            R0, R0, #4
BL              sub_3015EC
SUBS            R0, #8
BL              sub_102AF0
POP             {R4,PC}
