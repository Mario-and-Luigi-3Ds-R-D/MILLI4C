PUSH            {R3-R11,LR}
MOV             R5, R0
MOV             R6, #0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_2980C8
LDR             R0, [R5]
LDR             R1, [R0,#0x10]
MOV             R0, R5
BLX             R1
STRB            R6, [R5,#0xE]
LDRB            R0, [R5,#0x20]
LDR             R7, =dword_6E2378
LDR             R9, =off_6CE970
CMP             R0, #0
MOV             R8, #1
BNE             loc_2981EC
LDRB            R0, [R5,#0x22]
ADD             R4, R5, #0x14
CMP             R0, #0
BEQ             loc_298104
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
BLX             R1
STRB            R6, [R4,#0xE]
LDRB            R0, [R4,#0x1C]
CMP             R0, #0
BEQ             loc_29811C
CMP             R0, #1
BNE             loc_2981E0
B               loc_298180
LDR             R0, [R9]
ADD             R0, R0, #0x1E0
BL              sub_4E1CB0
CMP             R0, #0
STR             R0, [R4,#0x10]
BEQ             loc_2981E0
MOV             R6, R0
LDR             R10, [R4,#0x14]
LDR             R0, [R7,#(dword_6E237C - 0x6E2378)]
BL              sub_4FA910
LDR             R11, [R9]
LDR             R2, [R0,#0x58]
MOV             R1, #0
ADD             R11, R11, #0x68 ; 'h'
STR             R1, [R6,#0xC]
STR             R11, [R6,#8]
MOV             R3, R1
STR             R1, [SP,#0x28+var_28]
MOV             R1, R6
MOV             R0, R10
BL              sub_158E88
LDRB            R0, [R4,#0x1C]
ADD             R0, R0, #1
STRB            R0, [R4,#0x1C]
B               loc_2981E0
LDR             R0, [R9]
LDR             R1, [R4,#0x10]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             loc_2981E0
LDR             R0, [R4,#0x10]
MOV             R1, #1
BL              sub_10D594
STR             R0, [R4,#0x18]
LDR             R0, [R9]
LDR             R1, [R4,#0x10]
ADD             R0, R0, #0x1E0
BL              sub_4E2370
LDR             R0, [R9]
LDR             R1, [R4,#0x14]
ADD             R0, R0, #0x1E0
BL              sub_4E2054
LDRB            R0, [R4,#0x1C]
ADD             R0, R0, #1
STRB            R0, [R4,#0x1C]
STRB            R8, [R4,#0xC]
B               loc_2981EC
LDRB            R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_298210
LDR             R1, [R5,#0x10]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x2BC
LDR             R0, [R1]
CMP             R0, #0
BNE             loc_298210
LDR             R0, [R5,#0x2C]
STR             R0, [R1,#4]
STR             R0, [R1]
LDR             R4, [R5,#0x10]
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_298330
LDR             R0, [R5,#0x10]
ADD             R4, R4, #4
ADD             R0, R0, #0x3C ; '<'
CMP             R0, R4
BNE             loc_298214
LDRB            R0, [R5,#0x20]
CMP             R0, #0
BEQ             locret_298330
LDR             R0, [R9]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_298330
LDR             R0, [R5,#0x10]
ADD             R4, R0, #0x3C ; '<'
LDR             R1, [R0,#0x158]
LDR             R0, [R9]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             locret_298330
LDR             R0, [R4,#0x108]
CMP             R0, #0
BEQ             loc_2982A4
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_298330
LDR             R0, [R4,#0x10C]
CMP             R0, #0
BEQ             loc_2982C4
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_298330
LDR             R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_2982E4
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_298330
LDR             R0, [R4,#0x104]
CMP             R0, #0
BEQ             loc_298304
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_298330
LDR             R0, [R5,#0x10]
ADD             R0, R0, #0x3C ; '<'
BL              sub_5BBDF4
LDR             R0, [R5,#0x10]
LDRH            R1, [R7,#(word_6E23A4 - 0x6E2378)]
ADD             R0, R0, #0x3C ; '<'
STR             R1, [R0,#0x114]
ADD             R0, R0, #0x3C00
ADD             R0, R0, #0x134
BL              sub_5B7378
STRB            R8, [R5,#0xC]
POP             {R3-R11,PC}
