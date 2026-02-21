PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R1, =off_6CE970
MOV             R5, R0
LDR             R0, =0x120F78
MOV             R6, R2
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             locret_20CD90
BL              sub_5CF41C
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_20CD90
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
