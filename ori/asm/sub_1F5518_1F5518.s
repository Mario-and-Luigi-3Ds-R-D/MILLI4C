PUSH            {R4,LR}
BL              sub_29D240
LDR             R2, =off_6B2770
MOV             R1, #0
STR             R1, [R0,#8]
STR             R2, [R0]
STRB            R1, [R0,#0xC]
POP             {R4,PC}
