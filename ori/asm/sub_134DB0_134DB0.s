ADD             R2, R0, #0x2C4
ADD             R0, R0, #0x2D4
LDR             R3, [R2]
CMP             R3, #0
BEQ             loc_134DD4
ADD             R2, R2, #4
CMP             R2, R0
BNE             loc_134DB8
BX              LR
STR             R1, [R2]
BX              LR
