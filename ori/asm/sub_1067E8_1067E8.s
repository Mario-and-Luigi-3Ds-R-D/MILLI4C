MOV             R1, R0
LDR             R0, =byte_6CEE28
LDR             R0, [R0,#(off_6CEE2C - 0x6CEE28)]; dword_6ED9B8
LDR             R2, [R0]
LDR             R3, [R2,#0xC]
MOV             R2, #0x10000
BX              R3
