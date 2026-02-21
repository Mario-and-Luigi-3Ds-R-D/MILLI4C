PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_269DC8
LDR             R0, [R5]
LDR             R1, [R0,#0x10]
MOV             R0, R5
BLX             R1
MOV             R1, #0
STRB            R1, [R5,#0xE]
LDR             R4, [R5,#0x10]
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_269EE8
LDR             R0, [R5,#0x10]
ADD             R4, R4, #4
ADD             R0, R0, #0x34 ; '4'
CMP             R0, R4
BNE             loc_269DCC
LDR             R6, =off_6CE970
LDR             R0, [R6]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_269EE8
LDR             R0, [R5,#0x10]
ADD             R4, R0, #0x34 ; '4'
LDR             R1, [R0,#0x150]
LDR             R0, [R6]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             locret_269EE8
LDR             R0, [R4,#0x108]
CMP             R0, #0
BEQ             loc_269E54
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_269EE8
LDR             R0, [R4,#0x10C]
CMP             R0, #0
BEQ             loc_269E74
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_269EE8
LDR             R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_269E94
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_269EE8
LDR             R0, [R4,#0x104]
CMP             R0, #0
BEQ             loc_269EB4
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_269EE8
LDR             R0, [R5,#0x10]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5BBDF4
LDR             R1, =dword_6E2378
LDR             R0, [R5,#0x10]
LDRH            R1, [R1,#(word_6E23A4 - 0x6E2378)]
ADD             R0, R0, #0x34 ; '4'
STR             R1, [R0,#0x114]
ADD             R0, R0, #0x3C00
ADD             R0, R0, #0x134
BL              sub_5B7378
MOV             R0, #1
STRB            R0, [R5,#0xC]
POP             {R4-R6,PC}
