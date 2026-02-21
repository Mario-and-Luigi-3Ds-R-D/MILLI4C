PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x474]
CMP             R0, #0
BEQ             loc_181B10
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R4,#0x474]
MOV             R0, R4
POP             {R4,LR}
NOP
