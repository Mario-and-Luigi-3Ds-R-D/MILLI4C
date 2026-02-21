PUSH            {R4-R6,LR}
MOV             R6, R0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_1FDCCC
LDR             R0, [R6]
LDR             R1, [R0,#0x10]
MOV             R0, R6
BLX             R1
MOV             R1, #0
STRB            R1, [R6,#0xE]
ADD             R4, R6, #0x10
MOV             R5, #0
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1FDDD8
ADD             R5, R5, #1
CMP             R5, #0xD
ADD             R4, R4, #4
BCC             loc_1FDCD4
LDR             R4, =off_6CE970
LDR             R0, [R4]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_1FDDD8
LDR             R0, [R4]
LDR             R1, [R6,#0x160]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             locret_1FDDD8
LDR             R0, [R6,#0x14C]
CMP             R0, #0
BEQ             loc_1FDD50
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1FDDD8
LDR             R0, [R6,#0x150]
CMP             R0, #0
BEQ             loc_1FDD70
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1FDDD8
LDR             R0, [R6,#0x154]
CMP             R0, #0
BEQ             loc_1FDD90
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1FDDD8
LDR             R0, [R6,#0x148]
CMP             R0, #0
BEQ             loc_1FDDB0
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1FDDD8
ADD             R0, R6, #0x44 ; 'D'
BL              sub_5BBDF4
LDR             R0, =dword_6E2378
LDRH            R1, [R0,#(word_6E23A4 - 0x6E2378)]
ADD             R0, R6, #0x3C00
ADD             R0, R0, #0x178
STR             R1, [R6,#0x158]
BL              sub_5B7378
MOV             R0, #1
STRB            R0, [R6,#0xC]
POP             {R4-R6,PC}
