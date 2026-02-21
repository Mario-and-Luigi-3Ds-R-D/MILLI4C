MOV             R2, R1
LDR             R1, [R0,#0x464]
AND             R1, R1, #0xF
TST             R1, #1
BEQ             locret_22E0AC
ADD             R3, R1, #1
TST             R3, #3
ANDNE           R1, R3, #0xFF
LDR             R3, [R0]
SUBEQ           R1, R1, #1
ANDEQ           R1, R1, #0xFF
LDR             R3, [R3,#0x60]
BX              R3
BX              LR
