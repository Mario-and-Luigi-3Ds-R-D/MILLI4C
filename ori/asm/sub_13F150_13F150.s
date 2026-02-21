PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_140E90
MOV             R0, #1
STRB            R0, [R4,#0xC]
POP             {R4,PC}
