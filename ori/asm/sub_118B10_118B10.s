MRC             p15, 0, R0,c13,c0, 3
MOV             R1, #0
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0x14]
STR             R1, [R0,#0x18]
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x20]
STR             R1, [R0,#0x24]
STR             R1, [R0,#0x28]
STR             R1, [R0,#0x2C]
STR             R1, [R0,#0x30]
STR             R1, [R0,#0x34]
STR             R1, [R0,#0x38]
STR             R1, [R0,#0x3C]
BX              LR
