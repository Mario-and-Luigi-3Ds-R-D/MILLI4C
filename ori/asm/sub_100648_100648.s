PUSH            {R2-R6,LR}
MOVS            R5, R2
MOVS            R4, R1
MOVS            R2, R3
CMP             R1, #0
STR             R0, [SP,#0x18+var_18]
BEQ             loc_10065A
ADDS            R0, R0, R4
SUBS            R0, R0, #1
LDR             R3, =(sub_100A34+1 - 0x100660)
ADD             R3, PC; sub_100A34
MOV             R1, SP
STR             R0, [SP,#0x18+var_14]
MOVS            R0, R5
BL              sub_2FF20E
MOVS            R5, R0
CMP             R4, #0
BEQ             loc_100676
MOV             R1, SP
MOVS            R0, #0
BL              sub_2FF234
MOVS            R0, R5
POP             {R2-R6,PC}
