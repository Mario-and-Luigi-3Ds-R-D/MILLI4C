LDR             R0, [R0,#8]
CMP             R0, #0
BEQ             loc_1348E8
LDR             R0, [R0,#0x10]
CMP             R0, R1
MOVEQ           R0, #1
BEQ             locret_1348EC
MOV             R0, #0
BX              LR
