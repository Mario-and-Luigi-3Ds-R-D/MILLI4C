LDR             R3, [R0,#0x828]
ORR             R2, R1, #0x4000
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
LDR             R3, [R3,#4]
NOP
PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_1F1E60
LDR             R1, [R4,#0xA4]
LDR             R3, [R5]
MOV             R0, R5
LDRB            R2, [R1,#0x6C]
LDR             R3, [R3,#0x278]
LDR             R1, [R4,#0xA8]
POP             {R4-R6,LR}
BX              R3
