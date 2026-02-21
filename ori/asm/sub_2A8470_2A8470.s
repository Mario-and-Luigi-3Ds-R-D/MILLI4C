PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x84]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_2A8498
ADD             R1, R4, #0x84
MOV             R0, #1
BL              sub_10B1F8
STR             R5, [R4,#0x84]
STR             R5, [R4,#0x80]
POP             {R4-R6,PC}
