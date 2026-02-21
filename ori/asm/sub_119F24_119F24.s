NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
BL              sub_129DB8
MOV             R3, R6
MOV             R2, R5
MOV             R1, R4
POP             {R4-R6,LR}
B               sub_122FC0
