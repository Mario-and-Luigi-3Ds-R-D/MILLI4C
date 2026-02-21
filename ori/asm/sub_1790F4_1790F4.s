LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, [R3,#8]
LDR             R0, [R0]
MOV             R6, R2
MOV             R4, R3
LDR             R0, [R0,#0x9C]
BL              sub_5D1F8C
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_179138
MOV             R2, R4
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
