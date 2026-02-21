PUSH            {R4,LR}
CMP             R1, #0
MOV             R4, R0
STRB            R1, [R0,#0xD]
BEQ             locret_1412AC
CMP             R1, #1
BEQ             loc_141280
CMP             R1, #2
BNE             locret_1412AC
LDR             R0, [R0]
POP             {R4,LR}
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
B               sub_141898
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_141898
MOV             R0, #0
STRB            R0, [R4,#0xC]
LDR             R0, [R4]
POP             {R4,LR}
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
B               sub_141B50
POP             {R4,PC}
