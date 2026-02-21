LDR             R0, =dword_6E12CC
MOVS            R1, #0
STR             R1, [R0]
ADDS            R0, R0, #4
STR             R1, [R0]
BX              LR
