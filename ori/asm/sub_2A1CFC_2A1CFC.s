PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R7, =off_6CE970
STR             R2, [R0,#0x14]
STR             R0, [R2,#0x10]
MOV             R3, #0
LDR             R0, [R7]
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063B4 - 0x106000)]
LDR             R0, =0x428
BL              sub_10A358
CMP             R0, #0
BEQ             loc_2A1D48
BL              sub_14F198
LDR             R1, =off_6B9180
STR             R1, [R0]
MOV             R1, #0
STR             R0, [R4,#0x10]
BL              sub_14C3E8
LDR             R0, [R4,#0x10]
MOV             R8, #1
MOV             R1, R8
STRB            R8, [R0,#0x3F4]
LDR             R0, [R4,#0x10]
BL              sub_14C450
LDR             R0, [R4,#0x10]
MOV             R1, #0
MOV             R6, R1
STRB            R1, [R0,#0xF2]
STR             R5, [R4,#0xC]
LDR             R0, [R5,#0xAE0]
ADD             R5, R4, #0x1C
LDR             R0, [R0]
STR             R0, [R4,#8]
LDR             R0, [R4,#0xF4]
CMP             R0, #0
BEQ             loc_2A1DA8
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0xF4]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R1, =0xA001
LDR             R0, [R7]
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R4,#0x10]
LDR             R2, [R0]
LDR             R3, [R2,#0x58]
MOV             R2, #1
BLX             R3
MOV             R2, #0
LDR             R0, [R4,#0x10]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
LDR             R0, [R4,#0x10]
MOV             R2, #4
MOV             R1, #0
LDR             R0, [R0,#0x3AC]
STRB            R8, [R0,#0x68]
STRB            R2, [R0,#0x6A]
STRB            R1, [R0,#0x69]
POP             {R4-R8,PC}
