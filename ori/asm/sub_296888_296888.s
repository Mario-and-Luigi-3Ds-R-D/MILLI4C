PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #2
STRB            R0, [R4,#4]
LDR             R0, [R4,#8]
LDR             R1, [R0]
ADD             R1, R1, #0x230
STR             R1, [R4,#0xC]
LDR             R0, [R0]
ADD             R0, R0, #0x294
STR             R0, [R4,#0x1C]
LDR             R0, [R4]
ADD             R1, R0, #0x1C4
ADD             R0, R4, #0xC
BL              sub_61F374
LDR             R0, [R4]
ADD             R1, R0, #0x11C
ADD             R0, R4, #0x1C
BL              sub_61F374
POP             {R4,PC}
