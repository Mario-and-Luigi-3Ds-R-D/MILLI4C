PUSH            {R4,LR}
MOV             R4, #0
STR             R4, [R0,#0xC]!
ADD             R0, R0, #4
BL              sub_1203CC
SUB             R0, R0, #0x10
STR             R4, [R0,#4]
STR             R4, [R0]
STR             R4, [R0,#8]
POP             {R4,PC}
