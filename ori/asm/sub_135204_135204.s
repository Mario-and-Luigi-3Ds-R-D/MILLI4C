ADD             R2, R0, #0x2C4
ADD             R0, R0, #0x2D4
LDR             R3, [R2]
CMP             R3, R1
BNE             loc_135220
MOV             R0, #1
BX              LR
ADD             R2, R2, #4
CMP             R2, R0
BNE             loc_13520C
MOV             R0, #0
BX              LR
