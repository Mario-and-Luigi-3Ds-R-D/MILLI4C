PUSH            {R4,LR}
MOV             R4, #0
STR             R4, [R0]
STR             R4, [R0,#4]
STR             R4, [R0,#8]
STR             R4, [R0,#0xC]
STR             R4, [R0,#0x10]
STR             R4, [R0,#0x14]
STR             R4, [R0,#0x18]
STR             R4, [R0,#0x1C]!
ADD             R0, R0, #4
BL              sub_5859A4
LDR             R2, =0xFFFFF
ADD             R1, R0, #0x14
STM             R1, {R2,R4}
STR             R4, [R0,#0x1C]!
STR             R4, [R0,#4]
STR             R4, [R0,#8]
STR             R4, [R0,#0xC]
STR             R4, [R0,#0x10]
STR             R4, [R0,#0x14]
STR             R4, [R0,#0x18]
STRB            R4, [R0,#0x1C]
SUB             R0, R0, #0x3C ; '<'
STR             R4, [R0,#0x5C]
POP             {R4,PC}
