LDR             R2, =sub_29AE60
STR             R0, [R1,#0x20]
STR             R2, [R1,#0x1C]
STR             R1, [R0,#4]
LDR             R1, [R1,#0x10]
STR             R1, [R0,#8]
LDRB            R1, [R0,#2]
ORR             R1, R1, #1
STRB            R1, [R0,#2]
BX              LR
