PUSH            {R3-R5,LR}
MOVS            R4, R0
MOV             R0, SP
NOP
NOP
MOVS            R1, R0
MOVS            R0, R4
BL              sub_300F58
POP             {R3-R5,PC}
