PUSH            {R2-R6,LR}
MOVS            R5, R2
MOVS            R4, R1
MOVS            R2, R3
CMP             R1, #0
STR             R0, [SP,#0x18+var_18]
BEQ             loc_10005C
LSLS            R1, R4, #1
ADDS            R0, R1, R0
SUBS            R0, R0, #2
LDR             R3, =(sub_10020C+1 - 0x100062)
ADD             R3, PC; sub_10020C
MOV             R1, SP
STR             R0, [SP,#0x18+var_14]
MOVS            R0, R5
BL              sub_1001E6
MOVS            R5, R0
CMP             R4, #0
BEQ             loc_10007E
MOV             R1, SP
LDR             R0, [SP,#0x18+var_14]
ADDS            R0, R0, #2
STR             R0, [SP,#0x18+var_14]
MOVS            R0, #0
BL              sub_10020C
CMP             R5, R4
BCC             loc_100088
MOVS            R0, #0
MVNS            R0, R0
POP             {R2-R6,PC}
MOVS            R0, R5
POP             {R2-R6,PC}
