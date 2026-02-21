PUSH            {R4,LR}
MOV             R4, R0
MOV             R2, #0xC
MOV             R1, #0
BL              sub_110BE4
MOV             R0, #0
STRB            R0, [R4,#0xC]
MOV             R0, R4
POP             {R4,PC}
