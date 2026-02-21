LDR             R0, =off_6D1648
LDR             R1, [R3,#8]
LDR             R0, [R0]
CMP             R1, #0
LDR             R0, [R0,#0xC4]
LDR             R1, [R0,#4]
LDR             R0, [R1,#0x14]
ORREQ           R0, R0, #0x80000
BICNE           R0, R0, #0x80000
STR             R0, [R1,#0x14]
MOV             R0, #0
BX              LR
