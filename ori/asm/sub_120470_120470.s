MOV             R2, #0xFFFFFFFF
REV             R2, R2
STR             R2, [R0,#0x28]
BX              LR
