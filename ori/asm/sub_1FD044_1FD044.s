PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x418]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1FD064
BL              sub_533330
STR             R5, [R4,#0x418]
LDR             R0, [R4,#0x41C]
CMP             R0, #0
BEQ             loc_1FD078
BL              sub_533330
STR             R5, [R4,#0x41C]
LDR             R0, [R4,#0x420]
CMP             R0, #0
BEQ             loc_1FD08C
BL              sub_533330
STR             R5, [R4,#0x420]
ADD             R0, R4, #4
BL              sub_14F3EC
SUB             R0, R0, #4
POP             {R4-R6,PC}
