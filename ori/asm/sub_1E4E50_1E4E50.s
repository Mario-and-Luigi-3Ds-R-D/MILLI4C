ADD             R0, R0, #0x20 ; ' '
PUSH            {R4,LR}
LDR             R1, [R0,#4]
MOV             R4, R0
CMP             R1, #0
LDRNE           R1, [R0,#0x10]
CMPNE           R1, #0
BEQ             loc_1E4E7C
LDR             R1, =0x101
BL              sub_5858F8
B               loc_1E4E84
NOP
BL              sub_585940
MOV             R0, R4
NOP
SUB             R0, R0, #0x20 ; ' '
POP             {R4,PC}
