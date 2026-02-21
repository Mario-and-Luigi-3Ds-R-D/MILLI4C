LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R1, [R0,#0xE0]
BIC             R1, R1, #3
STR             R1, [R0,#0xE0]
MOV             R0, #0
BX              LR
