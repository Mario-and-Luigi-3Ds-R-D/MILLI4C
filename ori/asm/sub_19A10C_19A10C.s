LDR             R0, [R0,#0x90]
CMP             R0, #0
LDRBNE          R0, [R0,#0xB4]
MOVEQ           R0, #0xD
BX              LR
