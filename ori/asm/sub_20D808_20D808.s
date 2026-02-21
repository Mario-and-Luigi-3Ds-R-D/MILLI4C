PUSH            {R4,LR}
LDR             R0, [R2,#8]
UXTH            R4, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52C7F0
MOV             R1, R4
BL              sub_3B43B8
MOV             R0, #0
POP             {R4,PC}
