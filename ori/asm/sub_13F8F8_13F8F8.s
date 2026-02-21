LDR             R0, [R0,#4]
CMP             R0, R1
MOVEQ           R0, #1
MOVNE           R0, #0
BX              LR
