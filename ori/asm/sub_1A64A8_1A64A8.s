PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_1A64D4
LDR             R0, [R5]
LDR             R1, [R0,#0x10]
MOV             R0, R5
BLX             R1
MOV             R1, #0
STRB            R1, [R5,#0xE]
LDR             R0, [R5,#0x10]
ADD             R4, R0, #4
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1A6534
LDR             R0, [R5,#0x10]
ADD             R4, R4, #4
ADD             R0, R0, #0x14
CMP             R0, R4
BNE             loc_1A64DC
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_1A6534
LDR             R2, [R5,#0x10]
MOV             R1, #2
MOV             R0, #1
STRB            R1, [R2]
STRB            R0, [R5,#0xC]
POP             {R4-R6,PC}
