PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =dword_70EE68
BL              sub_13E574
CMP             R0, #0
BLT             locret_133174
LDR             R1, [R4,#0x30]
ADD             R0, R0, R1
STR             R0, [R4,#0x30]
POP             {R4,PC}
