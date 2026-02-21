MOV             R2, #0
STR             R2, [R0,#0x10]
ADD             R12, R0, #0x28 ; '('
STR             R2, [R0,#0x1C]
STR             R12, [R0,#0x14]
ADD             R3, R0, #0x20 ; ' '
STR             R12, [R0,#0x2C]
STR             R3, [R0,#0x18]
STR             R12, [R0,#0x28]
STR             R3, [R0,#0x24]
STR             R2, [R0,#4]
STR             R3, [R0,#0x20]
STR             R2, [R0,#8]
STR             R2, [R0]
STR             R2, [R0,#0xC]
STR             R2, [R0,#0x34]
STRB            R2, [R0,#0x38]
BX              LR
