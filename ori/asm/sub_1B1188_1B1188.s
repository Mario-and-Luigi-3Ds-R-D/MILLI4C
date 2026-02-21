CMP             R1, #0
BNE             locret_1B11A0
MOV             R1, #0x1E
MOV             R0, #0xFF
STR             R1, [R2]
STR             R0, [R3]
BX              LR
