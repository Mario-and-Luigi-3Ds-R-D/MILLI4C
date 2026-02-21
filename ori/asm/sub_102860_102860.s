PUSH            {R0,R1,R4,LR}
MOVS            R4, #0
BL              sub_300F9C
MOVS            R4, R0
B               loc_102874
NOP
NOP
NOP
NOP
CMP             R4, #0
BNE             loc_10287E
MOVS            R0, #3
BL              sub_301510
MOVS            R0, R4
POP             {R2-R4,PC}
