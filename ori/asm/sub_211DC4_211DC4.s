PUSH            {R4,LR}
LDR             R0, [R2,#0xC]
LDR             R12, =off_6CE970
LDR             R1, [R2,#8]
CMP             R0, #0
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
MOVNE           R3, #1
MOVEQ           R3, #0
MOV             R2, #2
SUB             R0, R12, R0
BL              sub_503688
MOV             R0, #0
POP             {R4,PC}
