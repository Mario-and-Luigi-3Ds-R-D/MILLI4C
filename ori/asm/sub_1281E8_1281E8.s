PUSH            {R4}
LDR             R1, [R0]
CMP             R1, #1
MOVNE           R2, #0
MOVNE           R1, #0xFFFFFFFF
BEQ             loc_12822C
LDREX           R3, [R0]
CMP             R3, R2
BNE             loc_12821C
STREX           R4, R1, [R0]
CMP             R4, #0
BNE             loc_128200
B               loc_128220
CLREX
CMP             R3, #0
MOVNE           R0, #0
BNE             loc_128230
MOV             R0, #1
POP             {R4}
BX              LR
