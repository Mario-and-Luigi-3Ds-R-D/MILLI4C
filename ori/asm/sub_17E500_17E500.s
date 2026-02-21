LDR             R1, [R0,#4]
LDR             R2, [R3,#0x68]
ADD             R1, R1, #0x14000
STR             R2, [R1,#0x2D8]
LDR             R2, [R0,#4]
LDR             R1, [R3,#0x6C]
ADD             R2, R2, #0x14000
STR             R1, [R2,#0x2DC]
LDR             R0, [R0,#4]
LDR             R1, [R3,#0x70]
ADD             R0, R0, #0x14000
STR             R1, [R0,#0x2E0]
MOV             R0, #0
BX              LR
