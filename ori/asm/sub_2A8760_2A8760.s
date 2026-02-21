MOV             R1, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0x24]
LDR             R3, =off_6B40B4
MOV             R2, #1
STR             R1, [R0,#0x2C]
STR             R2, [R0,#0x38]
STR             R3, [R0]
BX              LR
