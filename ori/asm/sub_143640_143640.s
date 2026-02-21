PUSH            {R6,R7,R11,LR}
MOV             R11, R2
PUSH            {R4,R5}
LDM             R1, {R3-R5}
LDM             R0, {R0-R2}
BICS            R12, R1, R0,LSL#1
BICSMI          R12, R4, R3,LSL#1
BPL             loc_143668
BL              sub_13D278
BL              sub_1435E4
POP             {R4-R7}
POP             {R11,PC}
