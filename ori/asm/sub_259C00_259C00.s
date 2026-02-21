PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_259C30
MOV             R1, #6
BL              sub_1586A8
LDR             R0, [R4,#0xC]
CMP             R0, #0
STRNE           R5, [R0,#0x64]
STRNE           R5, [R4,#0xC]
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             locret_259C54
MOV             R1, #6
BL              sub_1586A8
LDR             R0, [R4,#0x14]
CMP             R0, #0
STRNE           R5, [R0,#0x64]
STRNE           R5, [R4,#0x14]
POP             {R4-R6,PC}
