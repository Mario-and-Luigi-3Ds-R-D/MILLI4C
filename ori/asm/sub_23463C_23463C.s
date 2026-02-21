LDR             R1, =off_6B38D8
MOV             R2, #0
STM             R0, {R1,R2}
STR             R2, [R0,#8]
STR             R2, [R0,#0xC]
BX              LR
