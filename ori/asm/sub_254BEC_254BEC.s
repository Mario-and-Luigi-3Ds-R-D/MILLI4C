PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x5C]
BL              sub_257510
LDR             R0, [R4,#0x5C]
LDR             R0, [R0]
SUB             R1, R0, #0x300
SUBS            R1, R1, #0xE7
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [R4,#0x1A]
POP             {R4,PC}
