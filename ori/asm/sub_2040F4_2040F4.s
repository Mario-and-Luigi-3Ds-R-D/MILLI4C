PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R2,#8]
MOV             R4, R1
MOV             R5, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
LDR             R1, [R0,#0x3AC]
CMP             R1, #0
BEQ             loc_20414C
BL              sub_5C5820
CMP             R0, #0
BEQ             loc_20414C
MOVS            R1, R4
ADDNE           R1, R4, #4
MOV             R2, R5
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
MOV             R0, #0
POP             {R4-R6,PC}
