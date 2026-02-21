LDR             R0, =dword_6D2424
LDR             R1, [R0]
CMP             R1, #0
MOVNE           R1, #0
STRNE           R1, [R0]
BX              LR
