PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R4, R1
LDR             R0, [R2,#8]
MOV             R5, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
MOV             R7, R0
BL              sub_5EB408
CMP             R0, #0
BEQ             locret_20C820
MOV             R0, R7
BL              sub_5EB360
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_20C820
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R5
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
