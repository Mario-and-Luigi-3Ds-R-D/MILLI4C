PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#8]
CMP             R0, #0
BEQ             loc_2913B4
CMP             R0, #1
BNE             locret_2913E8
LDR             R0, [R4,#4]
LDR             R1, [R0,#4]
LDR             R1, [R1,#8]
LDRB            R1, [R1,#0xA0]
CMP             R1, #0xA
BEQ             locret_2913E8
POP             {R4,LR}
B               sub_2913F4
LDR             R0, [R4,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x4C]
BL              sub_5CDAE0
CMP             R0, #0
NOP
BNE             locret_2913E8
LDR             R0, [R4,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x4C]
BL              sub_2873CC
MOV             R0, #1
STRB            R0, [R4,#8]
POP             {R4,PC}
