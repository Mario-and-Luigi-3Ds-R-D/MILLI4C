CMP             R0, #0
CMPNE           R1, #0
MOVNE           R2, #0
BEQ             loc_2337BC
CMP             R1, R0
BNE             loc_2337A8
SXTH            R0, R2
BX              LR
LDR             R3, [R1]
TST             R3, #1
ADDEQ           R2, R2, #1
ADDEQ           R1, R1, #0x88
BEQ             loc_233798
MOV             R0, #0xFFFFFFFF
BX              LR
