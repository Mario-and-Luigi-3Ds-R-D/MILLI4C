PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_258264
LDR             R0, [R5]
LDR             R1, [R0,#0x10]
MOV             R0, R5
BLX             R1
MOV             R1, #0
STRB            R1, [R5,#0xE]
ADD             R4, R5, #0x10
MOV             R6, #0
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_258398
ADD             R6, R6, #1
CMP             R6, #0xE
ADD             R4, R4, #4
BCC             loc_25826C
LDR             R4, =off_6CE970
LDR             R0, [R4]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_258398
LDR             R0, =0x126E8
LDRB            R0, [R0,R5]
CMP             R0, #2
BNE             locret_258398
LDR             R0, [R4]
LDR             R1, [R5,#0x164]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             locret_258398
LDR             R0, [R5,#0x150]
CMP             R0, #0
BEQ             loc_2582F8
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_258398
LDR             R0, [R5,#0x154]
CMP             R0, #0
BEQ             loc_258318
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_258398
LDR             R0, [R5,#0x158]
CMP             R0, #0
BEQ             loc_258338
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_258398
LDR             R0, [R5,#0x14C]
CMP             R0, #0
BEQ             loc_258358
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_258398
LDR             R0, =0x126E4
SUB             R1, R0, #0x1C
SUB             R2, R0, #0x20 ; ' '
LDR             R0, [R0,R5]
STR             R0, [R1,R5]
STR             R0, [R2,R5]
ADD             R0, R5, #0x48 ; 'H'
BL              sub_5BBDF4
LDR             R0, =dword_6E2378
LDRH            R1, [R0,#(word_6E23A4 - 0x6E2378)]
ADD             R0, R5, #0x3C00
ADD             R0, R0, #0x17C
STR             R1, [R5,#0x15C]
BL              sub_5B7378
MOV             R0, #1
STRB            R0, [R5,#0xC]
POP             {R4-R6,PC}
