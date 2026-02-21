LDR             R2, =off_6B2DD8
MOV             R1, #0
STR             R1, [R0,#4]
STR             R2, [R0]
STR             R1, [R0,#8]
STR             R1, [R0,#0x1C]
BX              LR
