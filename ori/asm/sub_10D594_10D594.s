CMP             R1, #0
MOV             R2, R0
LDR             R0, [R0,#0x14]
MOVNE           R1, #0
STRNE           R1, [R2,#0x14]
BX              LR
