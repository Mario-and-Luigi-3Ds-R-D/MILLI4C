PUSH            {R4,LR}
LDR             R4, =byte_6D4B6C
LDRSB           R0, [R4,#(byte_6D4B6D - 0x6D4B6C)]
LDRSB           R1, [R4,#(byte_6D4B6F - 0x6D4B6C)]
ORRS            R0, R0, R1
BNE             locret_1222D4
LDRB            R0, [R4,#(byte_6D4B71 - 0x6D4B6C)]
CMP             R0, #0
BLNE            sub_129070
LDR             R0, =0x1FF81000
LDRSB           R1, [R0,#0xC0]
LDR             R0, =byte_70EE18
STRB            R1, [R4,#(byte_6D4B70 - 0x6D4B6C)]
BL              sub_121CF4
LDR             R0, =dword_70EE68
BL              sub_1292E8
MOV             R0, #1
STRB            R0, [R4,#(byte_6D4B71 - 0x6D4B6C)]
POP             {R4,PC}
