NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_69A37C
MOV             R6, R1
LDR             R5, [R0]
BL              sub_129DB8
MOV             R3, R6
MOV             R2, R4
MOV             R1, R5
POP             {R4-R6,LR}
B               sub_129C94
