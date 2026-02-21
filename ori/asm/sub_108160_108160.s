LDR             R1, [R0,#4]
CMP             R1, #0
MOVEQ           R0, #0
BEQ             locret_108174
B               sub_10EED4
BX              LR
