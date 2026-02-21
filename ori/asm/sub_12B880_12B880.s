LDR             R0, [R0,#0xC]
CMP             R0, R1
MOVEQ           R0, #1
MOVNE           R0, #0
BX              LR
