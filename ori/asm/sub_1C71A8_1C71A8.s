MOV             R1, R0
LDR             R0, [R0,#4]
LDR             R2, [R0,#4]!
STR             R2, [R1,#4]
BX              LR
