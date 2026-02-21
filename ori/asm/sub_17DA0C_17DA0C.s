LDR             R0, =off_6D1648
LDR             R1, [R3,#8]
LDR             R0, [R0]
CMP             R1, #0
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDRH            R1, [R0,#0x4A]
ORRNE           R1, R1, #3
BICEQ           R1, R1, #3
STRH            R1, [R0,#0x4A]
MOV             R0, #0
BX              LR
