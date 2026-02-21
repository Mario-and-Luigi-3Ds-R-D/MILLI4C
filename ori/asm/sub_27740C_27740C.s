LDR             R2, =off_6BC110
MOV             R1, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R2, [R0]
MOV             R3, #0xFFFFFFFF
STR             R3, [R0,#0x30]
STR             R3, [R0,#0x34]
STRB            R1, [R0,#0x38]
MOV             R2, #1
STRB            R1, [R0,#0x44]
STRB            R2, [R0,#0xE]
STRB            R2, [R0,#0xD]
STRB            R1, [R0,#0xC]
BX              LR
