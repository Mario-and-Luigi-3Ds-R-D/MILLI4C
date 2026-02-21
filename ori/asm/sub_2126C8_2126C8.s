PUSH            {R4,LR}
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F770
MOV             R0, #0
POP             {R4,PC}
