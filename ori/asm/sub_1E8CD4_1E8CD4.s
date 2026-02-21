CMP             R2, #0
STR             R1, [R0,#0x40]
STRNE           R1, [R0,#0x3C]
BX              LR
