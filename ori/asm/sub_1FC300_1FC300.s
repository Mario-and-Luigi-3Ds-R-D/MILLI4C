MOV             R1, #0
STRB            R1, [R0]
LDR             R1, =off_6CE970
LDR             R1, [R1]
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x214
STR             R1, [R0,#4]
BX              LR
