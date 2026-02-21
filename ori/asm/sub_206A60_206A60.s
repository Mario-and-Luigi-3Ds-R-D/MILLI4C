PUSH            {R4-R6,LR}
LDR             R4, =off_6CE970
LDR             R3, [R2,#0xC]
LDR             R5, =loc_19CF44
LDR             R4, [R4]
CMP             R3, #0
LDR             R3, [R2,#8]
MOVNE           R12, #1
LDR             R4, [R4,R5]
MOVEQ           R12, #0
ANDS            R3, R3, R4
MOVNE           R3, #1
CMP             R3, R12
MOVEQ           R0, #0
BEQ             locret_206AAC
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
