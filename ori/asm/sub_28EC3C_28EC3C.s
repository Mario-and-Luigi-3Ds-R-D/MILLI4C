PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xA0]
CMP             R0, #2
BEQ             locret_28EC9C
LDR             R5, [R4,#0x4E0]
MOV             R6, #0
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_28EC7C
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#8]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R5,#8]
MOV             R0, #9
STRB            R0, [R4,#0xA0]
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C548
STRB            R6, [R4,#0xD4]
POP             {R4-R6,PC}
