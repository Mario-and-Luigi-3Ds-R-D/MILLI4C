CMP             R1, #0
BNE             locret_1BE758
MOV             R1, #0x1D
MOV             R0, #0xFF
STR             R1, [R2]
STR             R0, [R3]
BX              LR
