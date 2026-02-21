PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x10C]
BL              sub_280DCC
ADD             R4, R4, #0x12800
ADD             R4, R4, #0x18C
MOV             R0, #1
STRB            R0, [R4]
POP             {R4,PC}
