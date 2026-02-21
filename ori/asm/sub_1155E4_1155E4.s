LDR             R0, =off_6D48F8
LDR             R1, [R0]
CMP             R1, #0
MOVNE           R1, #0
STRNE           R1, [R0]
BX              LR
