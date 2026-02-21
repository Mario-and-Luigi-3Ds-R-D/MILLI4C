PUSH            {R4-R6,LR}
ADD             R4, R0, #0x400
MOV             R2, R1
ADD             R4, R4, #0x358
LDR             R3, [R0,#4]
MOV             R5, R0
MOV             R1, R4
BL              sub_1F1E60
LDR             R2, [R5]
LDR             R1, [R4,#0xA4]
MOV             R0, R5
LDR             R3, [R2,#0x278]
LDRB            R2, [R1,#0x6C]
LDR             R1, [R4,#0xA8]
POP             {R4-R6,LR}
BX              R3
