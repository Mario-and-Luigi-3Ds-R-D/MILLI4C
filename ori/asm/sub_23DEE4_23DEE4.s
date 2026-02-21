CMP             R1, #0
BNE             locret_23DEFC
MOV             R1, #0x1C
MOV             R0, #0xFF
STR             R1, [R2]
STR             R0, [R3]
BX              LR
