ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
LDR             R3, [R0]
LDR             R2, [R1,#0xA4]
LDR             R1, [R1,#0xA8]
LDR             R3, [R3,#0x278]
LDRB            R2, [R2,#0x6C]
BX              R3
