PUSH            {R4-R6,LR}
LDR             R4, =byte_6D4B6C
LDRSB           R0, [R4]
LDRSB           R1, [R4,#(byte_6D4B6D - 0x6D4B6C)]
BICS            R0, R0, R1
BEQ             locret_119B28
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_120E48
MOV             R5, #1
LDR             R0, =dword_70EE68
MOV             R1, R5
STRB            R5, [R4,#(byte_6D4B6E - 0x6D4B6C)]
BL              sub_122720
STRB            R5, [R4,#(byte_6D4B6D - 0x6D4B6C)]
POP             {R4-R6,PC}
