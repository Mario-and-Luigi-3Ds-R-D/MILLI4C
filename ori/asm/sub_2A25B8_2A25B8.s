MOV             R1, #0
LDR             R2, =off_6B3E48
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R2, [R0]
STR             R1, [R0,#0x10]
STRB            R1, [R0,#0x20]
BX              LR
