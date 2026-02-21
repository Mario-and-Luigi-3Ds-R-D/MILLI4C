LDR             R1, =off_6CE970
MOV             R2, #0
LDR             R1, [R1]
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x214
STM             R0, {R1,R2}
ADD             R1, R0, #8
STR             R1, [R0,#0xC]
STR             R1, [R0,#8]
BX              LR
