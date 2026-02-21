LDR             R2, =off_6B2DA8
MOV             R1, #0
STR             R1, [R0,#4]
STR             R2, [R0]
STR             R1, [R0,#8]
STR             R1, [R0,#0x24]
BX              LR
