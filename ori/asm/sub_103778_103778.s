PUSH            {R4,LR}
LDR             R2, [R1,#8]
CMP             R2, #0
BGT             loc_103786
BL              sub_101FC4
POP             {R4,PC}
SUBS            R2, R2, #1
STR             R2, [R1,#8]
LDR             R2, [R1,#4]
LSLS            R0, R0, #0x18
LSRS            R0, R0, #0x18
ADDS            R3, R2, #1
STR             R3, [R1,#4]
STRB            R0, [R2]
POP             {R4,PC}
