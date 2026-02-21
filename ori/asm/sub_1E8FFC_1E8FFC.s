LDR             R0, [R0,#0xA4]
CMP             R0, #0
STRBNE          R1, [R0,#0x1F6]
BX              LR
