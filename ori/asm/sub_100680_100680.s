PUSH            {R0-R3}
PUSH            {R2-R6,LR}
MOVS            R4, R1
ADD             R2, SP, #0x28+varg_r3
STR             R0, [SP,#0x28+var_28]
BEQ             loc_100690
ADDS            R0, R0, R4
SUBS            R0, R0, #1
LDR             R3, =(sub_100A34+1 - 0x100696)
ADD             R3, PC; sub_100A34
MOV             R1, SP
STR             R0, [SP,#0x28+var_24]
LDR             R0, [SP,#0x28+varg_r2]
BL              sub_2FF20E
MOVS            R5, R0
CMP             R4, #0
BEQ             loc_1006AC
MOV             R1, SP
MOVS            R0, #0
BL              sub_2FF234
MOVS            R0, R5
POP             {R2-R6}
POP             {R3}
ADD             SP, SP, #0x10
BX              R3
