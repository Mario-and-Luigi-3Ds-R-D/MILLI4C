LDR             R1, [R0,#0x34]
LDR             R2, [R1,#4]
LDR             R0, [R2,#4]
CMP             R0, R2
BEQ             loc_221D84
LDRD            R2, R3, [R0]
CMP             R0, #0
STR             R2, [R3]
LDRD            R2, R3, [R0]
STR             R3, [R2,#4]
LDR             R1, [R1,#8]
LDR             R2, [R1]
STR             R2, [R0]
LDR             R2, [R1]
STR             R0, [R2,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             locret_221D88
MOV             R0, #0
BX              LR
