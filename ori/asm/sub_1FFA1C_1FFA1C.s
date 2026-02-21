LDR             R1, [R0,#0x120]
BIC             R1, R1, #0x1C0
ORR             R1, R1, #0xC0
STR             R1, [R0,#0x120]
LDR             R1, [R0]
LDR             R1, [R1,#0x68]
BX              R1
