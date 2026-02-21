LDR             R0, =off_6D1648
LDR             R1, [R3,#0x68]
LDR             R0, [R0]
LDR             R2, [R0,#0xB0]
STR             R1, [R2,#0x28]
LDR             R2, [R0,#0xB0]
LDR             R1, [R3,#0x6C]
STR             R1, [R2,#0x2C]
LDR             R0, [R0,#0xB0]
LDR             R1, [R3,#0x70]
STR             R1, [R0,#0x30]
MOV             R0, #0
BX              LR
