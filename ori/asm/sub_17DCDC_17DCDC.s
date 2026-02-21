LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R5, R2
LDR             R0, [R0]
MOV             R6, R3
LDR             R0, [R0,#0xB4]
BL              sub_5CEEFC
CMP             R0, #0
BEQ             locret_17DD18
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
