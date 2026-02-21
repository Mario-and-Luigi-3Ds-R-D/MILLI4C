PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R4, =byte_6D4B6C
LDRB            R0, [R4,#(byte_6D4B6E - 0x6D4B6C)]
CMP             R0, #0
BEQ             loc_1290B8
LDR             R2, =0x952B80
LDR             R0, =dword_70EE68
MOV             R3, #0
BL              sub_1297C0
CMP             R0, #0
MOVEQ           R0, #1
STRBEQ          R0, [R4,#(byte_6D4B6D - 0x6D4B6C)]
BEQ             loc_1290B8
LDR             R0, =dword_70EE68
BL              sub_129420
STRB            R5, [R4,#(byte_6D4B71 - 0x6D4B6C)]
POP             {R4-R6,PC}
LDRB            R0, [R4,#(byte_6D4B6D - 0x6D4B6C)]
CMP             R0, #0
BEQ             loc_1290D8
LDR             R0, =dword_6D4B74
BL              sub_120E7C
LDR             R0, =dword_6D4B74
NOP
BL              sub_120F58
LDRB            R0, [R4,#(byte_6D4B6F - 0x6D4B6C)]
CMP             R0, #0
BEQ             loc_1290F4
POP             {R4-R6,LR}
MOV             R1, #0
LDR             R0, =0x4A95C0
B               sub_121140
LDR             R0, =dword_70EE68
BL              sub_129860
NOP
NOP
B               loc_1290A8
