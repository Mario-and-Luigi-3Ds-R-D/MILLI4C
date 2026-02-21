PUSH            {R4,LR}
LDR             R0, [R2,#8]
LDR             R4, =off_6CE970
UXTH            R1, R0
LDR             R0, [R4]
BL              sub_52F508
MOV             R1, R0
LDR             R0, =sub_19D6B8
LDR             R2, [R4]
ADD             R0, R0, R2
BL              sub_3D40F8
MOV             R0, #0
POP             {R4,PC}
