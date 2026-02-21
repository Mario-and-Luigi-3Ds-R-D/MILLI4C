LDR             R0, [R0,#0x20]
CMP             R0, #0
MOVNE           R1, #1
STRBNE          R1, [R0,#0x421]
BX              LR
