PUSH            {R1-R7,LR}
MOVS            R5, R0
MOVS            R6, R1
MOVS            R4, R2
STR             R0, [SP,#0x20+var_20]
LSLS            R0, R0, #0x1E
BEQ             loc_10095C
CMP             R4, #0
BEQ             loc_100978
SUBS            R4, R2, #1
STRH            R6, [R5]
ADDS            R5, R5, #2
CMP             R4, #2
BCC             loc_100978
LSRS            R7, R4, #1
LSLS            R2, R6, #0x10
LSLS            R7, R7, #1
ORRS            R2, R6
LSLS            R1, R7, #1
MOVS            R0, R5
STR             R1, [SP,#0x20+var_1C]
BLX             loc_2FFE90
LDR             R1, [SP,#0x20+var_1C]
SUBS            R4, R4, R7
ADDS            R5, R1, R5
CMP             R4, #0
BEQ             loc_10097E
STRH            R6, [R5]
LDR             R0, [SP,#0x20+var_20]
POP             {R1-R7,PC}
