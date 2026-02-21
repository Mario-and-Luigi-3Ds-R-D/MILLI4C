PUSH            {R4,LR}
LDRB            R3, [R0,#0x90]
CMP             R3, #1
MOV             R3, #0
BNE             loc_284B34
LDRB            R12, [R0,#8]
CMP             R12, #0
BEQ             loc_284B28
LDR             R4, [R0,#0xC]
LDR             R12, [R0,#4]
CMP             R12, R4
BNE             loc_284B28
BL              sub_285780
MOV             R3, R0
B               loc_284B34
LDR             R1, [R0,#4]
ADD             R1, R1, #1
STR             R1, [R0,#4]
MOV             R0, R3
POP             {R4,PC}
