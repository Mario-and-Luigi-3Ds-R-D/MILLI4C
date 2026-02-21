PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_22196C
LDR             R0, [R4,#0x10]!
MOV             R5, #0
CMP             R0, #0
BEQ             loc_221DF8
BL              sub_110D10
STR             R5, [R4]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_221E0C
BL              sub_110D10
STR             R5, [R4,#0xC]
LDR             R0, [R4,#4]
STR             R0, [R0,#4]
LDR             R0, [R4,#4]
STR             R0, [R0]
LDR             R0, [R4,#8]
STR             R0, [R0,#4]
LDR             R0, [R4,#8]
STR             R0, [R0]
SUB             R0, R4, #0x10
STRH            R5, [R4,#0x20]
POP             {R4-R6,PC}
