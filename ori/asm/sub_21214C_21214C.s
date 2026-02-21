LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R1, [R2,#8]
LDR             R0, [R0]
BL              sub_52FC70
MOV             R0, #0
POP             {R4,PC}
