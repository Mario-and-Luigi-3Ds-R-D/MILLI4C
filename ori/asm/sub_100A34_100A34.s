LDR             R3, [R1,#4]
LDR             R2, [R1]
CMP             R2, R3
BCS             locret_100A42
ADDS            R3, R2, #1
STR             R3, [R1]
STRB            R0, [R2]
BX              LR
