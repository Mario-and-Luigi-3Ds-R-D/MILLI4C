PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xA0]
LDR             R1, =0x1462C
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x38]
CMP             R1, #3
BEQ             loc_1F0428
BL              sub_221A40
LDR             R0, [R4,#0xA0]
POP             {R4,LR}
B               sub_2D4074
NOP
BL              sub_59D118
LDR             R0, [R4]
MOV             R1, #9
LDR             R2, [R0,#0xC4]
MOV             R0, R4
POP             {R4,LR}
BX              R2
