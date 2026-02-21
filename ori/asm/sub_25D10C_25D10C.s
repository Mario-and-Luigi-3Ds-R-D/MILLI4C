PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x7EC]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_25D12C
BL              sub_533330
STR             R5, [R4,#0x7EC]
LDR             R0, [R4,#0x7F0]
CMP             R0, #0
BEQ             loc_25D140
BL              sub_533330
STR             R5, [R4,#0x7F0]
ADD             R0, R4, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
POP             {R4-R6,PC}
