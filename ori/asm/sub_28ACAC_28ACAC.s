PUSH            {R3-R7,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_28ACD8
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
BLX             R1
MOV             R1, #0
STRB            R1, [R4,#0xE]
LDRB            R0, [R4,#0x1C]
LDR             R7, =off_6CE970
CMP             R0, #0
BEQ             loc_28AD54
CMP             R0, #1
BNE             locret_28AD50
LDR             R0, [R7]
LDR             R1, [R4,#0x10]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             locret_28AD50
LDR             R0, [R4,#0x10]
MOV             R1, #1
BL              sub_10D594
STR             R0, [R4,#0x18]
LDR             R0, [R7]
LDR             R1, [R4,#0x10]
ADD             R0, R0, #0x1E0
BL              sub_4E2370
LDR             R0, [R7]
LDR             R1, [R4,#0x14]
ADD             R0, R0, #0x1E0
BL              sub_4E2054
LDRB            R0, [R4,#0x1C]
MOV             R1, #1
ADD             R0, R0, #1
STRB            R0, [R4,#0x1C]
STRB            R1, [R4,#0xC]
POP             {R3-R7,PC}
LDR             R0, [R7]
ADD             R0, R0, #0x1E0
BL              sub_4E1CB0
CMP             R0, #0
STR             R0, [R4,#0x10]
BEQ             locret_28AD50
MOV             R5, R0
LDR             R0, =dword_6E2378
LDR             R6, [R4,#0x14]
LDR             R0, [R0,#(dword_6E237C - 0x6E2378)]
BL              sub_4FA910
LDR             R7, [R7]
MOV             R1, R5
LDR             R2, [R0,#0x58]
MOV             R12, #0
ADD             R5, R5, #8
ADD             R7, R7, #0x68 ; 'h'
STM             R5, {R7,R12}
MOV             R3, R12
MOV             R0, R6
STR             R12, [SP,#0x18+var_18]
BL              sub_158E88
LDRB            R0, [R4,#0x1C]
ADD             R0, R0, #1
STRB            R0, [R4,#0x1C]
POP             {R3-R7,PC}
