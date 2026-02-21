PUSH            {R4,LR}
LDR             R0, [R2,#8]
LDR             R4, [R2,#0xC]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
MOV             R1, R4
BL              sub_4FF4DC
MOV             R0, #0
POP             {R4,PC}
