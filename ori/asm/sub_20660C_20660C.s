PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R1, [R2,#8]
MOV             R5, R2
LDR             R2, =off_6CE970
MOV             R6, R0
LDR             R0, =0xFFE683CC
LDR             R2, [R2]
SUB             R0, R2, R0
BL              sub_5032DC
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_20665C
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R5
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
