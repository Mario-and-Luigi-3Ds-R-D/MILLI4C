PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R4, #0
LDR             R7, =0xFFFF
SXTB            R5, R4
MOV             R1, R5
ADD             R0, R5, R5,LSL#2
ADD             R2, R6, R0,LSL#2
LDR             R0, =dword_70EE68
STRH            R7, [R2]
BL              sub_13339C
ADD             R0, R5, R5,LSL#2
ADD             R0, R0, R5,LSL#3
MOV             R1, R5
ADD             R2, R6, R0,LSL#2
LDR             R0, =dword_70EE68
STRH            R7, [R2,#0x28]!
BL              sub_133480
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_121ED4
POP             {R4-R8,PC}
