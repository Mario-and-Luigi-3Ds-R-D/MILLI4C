PUSH            {R4-R8,LR}
MOV             R6, #0
MOV             R7, R1
ADD             R4, R0, #4
ADD             R5, R0, #0xF4
LDRB            R0, [R4,#0x28]
CMP             R0, #0
BEQ             loc_1CE65C
MOV             R1, R7
MOV             R0, R4
BL              sub_1CD544
ADD             R4, R4, #0x3C ; '<'
CMP             R4, R5
BNE             loc_1CE644
POP             {R4-R8,PC}
