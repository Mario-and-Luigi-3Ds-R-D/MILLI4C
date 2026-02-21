ADD             R2, R0, #0x300
LDRH            R0, [R2,#0xA4]
LDRH            R3, [R2,#0xA6]
STRH            R1, [R2,#0xA6]
ADD             R0, R0, R3
SUB             R0, R0, R1
CMP             R0, #0
MOVLT           R0, #0
STRH            R0, [R2,#0xA4]
BX              LR
