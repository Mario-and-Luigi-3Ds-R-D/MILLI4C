PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xB0]
CMP             R0, #8
BNE             locret_1C32BC
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xA
BL              sub_14C548
MOV             R1, #0
MOV             R0, #0xB
STRB            R1, [R4,#0xB1]
STRB            R0, [R4,#0xB0]
POP             {R4,PC}
