PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R0, [R1,#0x10]
STR             R5, [R1,#0x20]
MOV             R4, R1
STR             R5, [R1,#0x28]
CMP             R0, #0
STR             R5, [R1,#8]
LDRNE           R1, [R4,#0xC]
CMPNE           R1, #0
BEQ             loc_135F40
MOV             R1, R4
BL              sub_13F2E0
STR             R5, [R4,#0x10]
MOV             R0, R4
STR             R5, [R4,#0xC]
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_13F9EC
