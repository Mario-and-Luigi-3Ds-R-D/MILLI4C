LDR             R1, =off_6CE970
LDR             R0, [R2,#8]
LDR             R1, [R1]
CMP             R0, #0
MOVNE           R0, #1
ADD             R1, R1, #0x100000
ADD             R1, R1, #0x9B000
STRB            R0, [R1,#0xEF]
MOV             R0, #0
BX              LR
