LDR             R3, [R1,#4]
LDR             R2, [R1]
CMP             R2, R3
BCS             locret_10021A
ADDS            R3, R2, #2
STR             R3, [R1]
STRH            R0, [R2]
BX              LR
