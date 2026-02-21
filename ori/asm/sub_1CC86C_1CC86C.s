LDR             R0, [R0]
CMP             R1, #0
MOVNE           R1, #1
STRBNE          R1, [R0,#0xF2]
BX              LR
