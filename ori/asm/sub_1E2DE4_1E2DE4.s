MOV             R1, #0
MOV             R2, #0xFFFFFFFF
STR             R1, [R0]
STRH            R2, [R0,#0x30]
STR             R1, [R0,#4]
BX              LR
