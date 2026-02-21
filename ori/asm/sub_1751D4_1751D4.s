PUSH            {R4-R6,LR}
ADD             R5, R0, #0x400
MOV             R4, R0
ADD             R5, R5, #0x358
MOV             R0, R5
BL              sub_19499C
LDR             R0, [R5,#0xA4]
MOV             R3, #1
MOV             R2, #5
MOV             R1, #0
STRB            R3, [R0,#0x68]
STRB            R2, [R0,#0x6A]
STRB            R1, [R0,#0x69]
LDR             R0, [R4]
LDR             R1, [R0,#0x314]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R1
