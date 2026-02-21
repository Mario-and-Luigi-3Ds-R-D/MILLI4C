CMP             R1, #0
CMPNE           R0, #0
BEQ             loc_1453E8
CMP             R2, #0
LDRHGE          R3, [R1,#6]
CMPGE           R3, R2
BGT             loc_1453F0
MOV             R0, #0
BX              LR
ADD             R1, R1, R2,LSL#5
LDR             R2, [R1,#0x20]
STR             R2, [R0]
LDR             R2, [R1,#0x24]
STR             R2, [R0,#4]
LDR             R2, [R1,#0x28]
STR             R2, [R0,#8]
LDR             R2, [R1,#0x2C]
STR             R2, [R0,#0xC]
LDRH            R2, [R1,#0x30]
STRH            R2, [R0,#0x10]
LDRH            R2, [R1,#0x32]
STRH            R2, [R0,#0x12]
LDRB            R2, [R1,#0x34]
STRB            R2, [R0,#0x14]
LDRB            R2, [R1,#0x35]
STRB            R2, [R0,#0x15]
LDRH            R2, [R1,#0x36]
STRH            R2, [R0,#0x16]
LDR             R2, [R1,#0x38]
STR             R2, [R0,#0x18]
LDR             R1, [R1,#0x3C]
STR             R1, [R0,#0x1C]
MOV             R0, #1
BX              LR
