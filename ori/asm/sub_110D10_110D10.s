LDR             R2, [R0,#-4]
LDR             R1, [R2]
LDR             R3, [R1]
MOV             R1, R0
MOV             R0, R2
BX              R3
