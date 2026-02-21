MOV             R2, #0
STRH            R1, [R0,#0xA]
STR             R2, [R0]
STR             R2, [R0,#4]
STRH            R2, [R0,#8]
BX              LR
