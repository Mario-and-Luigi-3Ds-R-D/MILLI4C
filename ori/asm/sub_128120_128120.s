PUSH            {R3-R5,LR}
MOV             R4, R0
BL              sub_120CA4
STR             R0, [SP,#0x10+var_10]
MOV             R1, R4
MOV             R0, SP
BL              sub_132704
POP             {R3-R5,PC}
