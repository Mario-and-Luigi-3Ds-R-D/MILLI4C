PUSH            {R4-R8,LR}
MOV             R4, R1
MOV             R7, R0
LDR             R0, [R2,#8]
MOV             R5, R2
UXTH            R6, R0
MOV             R0, R6
BL              sub_47FF28
CMP             R0, #0
BEQ             loc_20C754
LDR             R0, =off_6CE970
MOV             R1, R6
LDR             R0, [R0]
BL              sub_52F368
MOV             R6, R0
BL              sub_5EC8D8
CMP             R0, #0
BNE             loc_20C734
LDR             R0, [R6,#0x18]
ADD             R0, R0, #0x158
BL              sub_5F19B8
CMP             R0, #0
BEQ             loc_20C754
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R5
MOV             R0, R7
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
MOV             R0, #0
POP             {R4-R8,PC}
