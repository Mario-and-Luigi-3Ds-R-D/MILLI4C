PUSH            {R4-R6,LR}
MOVS            R5, R0
LDR             R4, =off_6E12C8
LDR             R0, [R4]
CMP             R0, #0
BNE             loc_10359C
BL              sub_30226C
LDR             R1, [R4]
STR             R1, [R5]
LDR             R0, [R1,#0x1C]
ADDS            R0, R0, #1
STR             R0, [R1,#0x1C]
MOVS            R0, R5
POP             {R4-R6,PC}
