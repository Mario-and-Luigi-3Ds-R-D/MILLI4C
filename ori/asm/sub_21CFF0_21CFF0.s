PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
STRH            R0, [R4]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
STRB            R0, [R4,#0xC]
MOV             R0, R4
BL              sub_21CEA4
MOV             R0, R4
POP             {R4,PC}
