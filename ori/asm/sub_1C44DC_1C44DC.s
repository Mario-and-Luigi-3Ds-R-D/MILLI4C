PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R7, #0
MOV             R4, #0xA000
STR             R7, [R0,#4]
STR             R7, [R0,#8]
LDR             R0, =off_6B0F58
LDR             R1, =off_6BF4C8
LDR             R8, =off_6CE970
STR             R0, [R6]
STR             R7, [R6,#0x2C]
STR             R1, [R6,#0x28]
STR             R7, [R6,#0x30]
STR             R7, [R6,#0x38]
STR             R7, [R6,#0x3C]
STR             R7, [R6,#0x40]
STRB            R7, [R6,#0x44]
STR             R7, [R6,#0x48]
STR             R7, [R6,#0x4C]
ADD             R9, R4, #4
STRB            R7, [R6,#0x24]
UXTH            R0, R4
UXTH            R1, R4
ADD             R5, R6, R0,LSL#2
SUB             R5, R5, #0x27000
LDR             R0, [R8]
SUB             R5, R5, #0xFF0
BL              sub_52FACC
ADD             R4, R4, #1
CMP             R4, R9
STR             R0, [R5]
BCC             loc_1C4530
STRB            R7, [R6,#0x50]
MOV             R0, R6
STR             R7, [R6,#0x54]
POP             {R4-R10,PC}
