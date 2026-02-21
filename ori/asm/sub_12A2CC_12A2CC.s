PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_1233A8
MOV             R1, R5
MOV             R0, R4
BL              sub_133820
MOV             R4, R0
BL              sub_123520
MOV             R0, R4
POP             {R4-R6,PC}
