PUSH            {R4,LR}
LDR             R4, =byte_6D4B6C
LDRSB           R0, [R4]
LDRSB           R1, [R4,#(byte_6D4B6D - 0x6D4B6C)]
TST             R0, R1
BEQ             locret_119B88
LDR             R0, =dword_70EE68
MOV             R1, #1
BL              sub_1222E8
LDR             R0, =0x1FF81000
LDRSB           R1, [R0,#0xC0]
LDR             R0, =byte_70EE18
STRB            R1, [R4,#(byte_6D4B70 - 0x6D4B6C)]
BL              sub_121CF4
MOV             R0, #0
STRB            R0, [R4,#(byte_6D4B6D - 0x6D4B6C)]
STRB            R0, [R4,#(byte_6D4B6E - 0x6D4B6C)]
MCR             p15, 0, R0,c7,c10, 4
ADD             R0, R4, #8
POP             {R4,LR}
B               sub_118998
POP             {R4,PC}
