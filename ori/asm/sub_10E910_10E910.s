PUSH            {R4,LR}
BL              sub_118980
CMP             R0, #4
MOVEQ           R0, #1
MOVNE           R0, #0
POP             {R4,PC}
