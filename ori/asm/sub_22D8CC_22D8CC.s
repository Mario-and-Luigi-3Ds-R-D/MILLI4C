LDR             R0, [R1]
TST             R0, #7
ORRNE           R0, R0, #8
STRNE           R0, [R1]
BX              LR
