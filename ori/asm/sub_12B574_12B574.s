LDR             R0, [R0,#0x1C]
CMP             R0, #0
MOVNE           R0, #1
BX              LR
