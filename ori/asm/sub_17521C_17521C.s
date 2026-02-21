PUSH            {R4-R6,LR}
ADD             R4, R0, #0x400
ADD             R12, R0, #0x400
MOV             R6, R3
ADD             R4, R4, #0x358
MOV             R5, R0
MOV             R3, #0
VLDR            S0, [R12,#0x70]
MOV             R0, R4
BL              sub_1949CC
CMP             R6, #0
BEQ             locret_17526C
LDR             R1, [R4,#0xA4]
LDR             R3, [R5]
MOV             R0, R5
LDRB            R2, [R1,#0x6C]
LDR             R3, [R3,#0x278]
LDR             R1, [R4,#0xA8]
POP             {R4-R6,LR}
BX              R3
POP             {R4-R6,PC}
