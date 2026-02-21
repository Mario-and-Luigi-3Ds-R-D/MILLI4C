MOV             R1, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0x1C]
LDR             R2, =off_6B1968
STR             R1, [R0,#0x20]
STR             R2, [R0]
BX              LR
