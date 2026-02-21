PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R5, R1
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x7E0
LDR             R0, [R0]
LDR             R0, [R0]
MOV             R1, R0
LDR             R0, [R4,#4]
MOV             R2, R5
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_284AEC
CMP             R0, #0
LDR             R0, [R4,#4]
BEQ             loc_292B24
POP             {R4-R6,LR}
B               sub_292C4C
MOV             R1, R5
POP             {R4-R6,LR}
NOP
