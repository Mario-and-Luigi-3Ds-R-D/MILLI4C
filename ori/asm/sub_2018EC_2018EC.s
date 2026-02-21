LDR             R2, [R0]
CMP             R2, #0
STRNE           R1, [R2,#4]
SUB             R2, R0, #8
STR             R2, [R1,#4]
LDR             R2, [R0]
STR             R2, [R1,#8]
STR             R1, [R0]
BX              LR
