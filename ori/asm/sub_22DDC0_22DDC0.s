LDR             R0, [R1]
TST             R0, #7
BICNE           R0, R0, #8
STRNE           R0, [R1]
BX              LR
