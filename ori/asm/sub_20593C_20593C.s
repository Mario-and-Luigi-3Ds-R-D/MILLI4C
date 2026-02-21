PUSH            {R4-R6,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
CMP             R0, #0
LDR             R0, [R2,#0x10]
UXTH            R1, R1
MOVNE           R4, #1
MOVEQ           R4, #0
SXTH            R5, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F480
CMP             R4, #0
BEQ             loc_205980
MOV             R1, R5
BL              sub_4F2A6C
B               loc_205988
NOP
BL              sub_4F18DC
MOV             R0, #0
POP             {R4-R6,PC}
