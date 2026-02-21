PUSH            {R3-R7,LR}
MOVS            R5, R1
MOVS            R6, R0
LSLS            R0, R1, #0x1C
BEQ             loc_103532
MOVS            R0, R1
BL              sub_1029FE
MOVS            R5, R0
LDR             R0, [R6]
MOVS            R4, #0
LDR             R7, [R0,#0xC]
B               loc_10356E
LDR             R0, [R6]
MOVS            R1, R4
ADDS            R0, #8
BL              sub_301B9C
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_10356C
LDR             R1, [R0,#4]
TST             R1, R5
BEQ             loc_10356C
LDR             R1, [R0,#0xC]
SUBS            R1, R1, #1
STR             R1, [R0,#0xC]
BNE             loc_10355E
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [R6]
MOVS            R1, R4
ADDS            R0, #8
BL              sub_301B9C
MOVS            R1, #0
STR             R1, [R0]
ADDS            R4, R4, #1
CMP             R4, R7
BNE             loc_10353A
POP             {R3-R7,PC}
