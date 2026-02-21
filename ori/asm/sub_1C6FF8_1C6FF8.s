PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R4, R0
MOV             R5, #0
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             loc_1C7048
ADD             R5, R5, #1
CMP             R5, #3
ADD             R4, R4, #4
BCC             loc_1C7008
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_5EE764
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_1C704C
MOV             R0, #0
STRB            R0, [R6,#0xC]
POP             {R4-R6,PC}
