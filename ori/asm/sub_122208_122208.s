PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_122234
MOV             R1, R4
STRB            R4, [R5,#2]
POP             {R4-R6,LR}
LDR             R0, =dword_70EE68
B               sub_1296EC
POP             {R4-R6,PC}
