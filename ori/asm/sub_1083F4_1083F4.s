PUSH            {R4,LR}
BL              sub_10F4F8
CMP             R0, #1
MOVNE           R0, #0
POP             {R4,PC}
