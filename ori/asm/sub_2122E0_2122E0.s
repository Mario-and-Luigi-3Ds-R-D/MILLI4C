PUSH            {R4-R6,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
LDR             R2, [R2,#0x10]
AND             R5, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
UXTH            R4, R2
LDR             R0, [R0]
BL              sub_52FACC
MOV             R3, #0
MOV             R2, R4
MOV             R1, R5
BL              sub_3D8398
MOV             R0, #0
POP             {R4-R6,PC}
