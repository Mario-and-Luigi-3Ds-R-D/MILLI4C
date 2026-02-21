LDR             R0, [R0,#0x20]
CMP             R0, #0
SUBNE           R0, R0, #0xD8
BX              LR
