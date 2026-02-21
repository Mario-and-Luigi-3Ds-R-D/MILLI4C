MOV             R2, #0
MOV             R1, R2
NOP
MOV             R3, #0
STM             R0, {R1-R3}
STR             R3, [R0,#0xC]
BX              LR
