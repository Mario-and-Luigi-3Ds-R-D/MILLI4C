MOV             R1, #1
STR             R1, [R0,#4]
MOV             R2, #0
STR             R2, [R0]
LDR             R1, =off_6CE970
STR             R2, [R0,#8]
STR             R2, [R0,#0xC]
STR             R2, [R0,#0x10]
STR             R2, [R0,#0x14]
LDR             R1, [R1]
ADD             R1, R1, #0x68 ; 'h'
STR             R1, [R0]
BX              LR
