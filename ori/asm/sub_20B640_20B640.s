PUSH            {R4,LR}
LDR             R0, [R2,#8]
LDR             R4, [R2,#0xC]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
STR             R4, [R0,#0x47C]
MOV             R0, #0
POP             {R4,PC}
