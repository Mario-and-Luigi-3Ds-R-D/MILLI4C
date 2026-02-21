LDR             R2, [R0,#8]
CMP             R2, #0
BEQ             locret_1E4CFC
LDR             R1, [R0,#0xC]
MOV             R0, R2
B               sub_126EA4
BX              LR
