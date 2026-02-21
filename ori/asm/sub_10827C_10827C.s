PUSH            {R4,LR}
MOVS            R4, R0
MOVEQ           R0, #3
BEQ             loc_1082AC
CMP             R4, #1
MOVEQ           R0, #2
BEQ             loc_1082AC
CMP             R0, #2
BNE             locret_1082BC
POP             {R4,LR}
MOV             R0, #1
B               sub_11A198
BL              sub_11A198
MOV             R0, R4
POP             {R4,LR}
B               sub_11B290
POP             {R4,PC}
