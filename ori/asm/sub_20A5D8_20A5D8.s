PUSH            {R3-R5,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
LDR             R2, [R2,#0x10]
SXTH            R5, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
SXTH            R4, R2
LDR             R0, [R0]
BL              sub_52F480
MOV             R1, #0
STR             R1, [SP,#0x10+var_10]
MOV             R3, #1
MOV             R2, R4
MOV             R1, R5
BL              sub_4F18FC
MOV             R0, #0
POP             {R3-R5,PC}
