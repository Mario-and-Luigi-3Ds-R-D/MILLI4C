PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_14C3E8
LDR             R0, =off_6CE970
MOV             R2, R4
MOV             R1, R5
LDR             R0, [R0]
POP             {R4-R6,LR}
B               sub_52C5C0
