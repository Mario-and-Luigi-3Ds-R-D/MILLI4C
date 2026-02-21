ADD             R2, R2, #8
PUSH            {R4-R6,LR}
LDM             R2, {R0,R2}
LDR             R6, =off_6CE970
UXTH            R1, R0
UXTH            R4, R2
LDR             R0, [R6]
BL              sub_52F508
MOV             R5, R0
LDR             R0, [R6]
MOV             R1, R4
BL              sub_52F368
MOV             R2, R0
LDR             R0, =sub_19D6B8
LDR             R3, [R6]
MOV             R1, R5
ADD             R0, R0, R3
BL              sub_3D428C
MOV             R0, #0
POP             {R4-R6,PC}
