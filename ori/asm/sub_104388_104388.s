LDR             R3, =off_6B7E14
MOV             R2, #0
STRD            R2, R3, [R0]
STR             R2, [R0,#0x10]
STR             R2, [R0,#0x18]
STR             R2, [R0,#0x1C]
BX              LR
