MOV             R2, #0
STR             R2, [R0]
STR             R2, [R0,#8]
LDR             R2, =off_6B2A84
MOV             R1, #0xFF
STR             R2, [R0,#4]
STRB            R1, [R0,#0xC]
BX              LR
