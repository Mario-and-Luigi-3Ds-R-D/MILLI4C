MOV             R1, #1
LDREX           R2, [R0]
STREX           R3, R1, [R0]
CMP             R3, #0
BNE             loc_120F44
BX              LR
