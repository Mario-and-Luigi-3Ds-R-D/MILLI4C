PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R1, R2
ADD             R12, R0, #0x400
MOV             R5, R0
MOV             R2, R3
LDR             R6, [SP,#0x10+arg_0]
VLDR            S0, [R12,#0x70]
MOV             R3, #0
MOV             R0, R4
BL              sub_1949CC
CMP             R6, #0
BEQ             locret_174FA8
LDR             R1, [R4,#0xA4]
LDR             R3, [R5]
MOV             R0, R5
LDRB            R2, [R1,#0x6C]
LDR             R3, [R3,#0x278]
LDR             R1, [R4,#0xA8]
POP             {R4-R6,LR}
BX              R3
POP             {R4-R6,PC}
