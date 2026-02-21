LDR             R0, [R0,#8]
CMP             R1, #0
BEQ             loc_292EEC
CMP             R0, #0
BEQ             locret_292EF8
B               sub_28EA14
CMP             R0, #0
BEQ             locret_292EF8
B               sub_28EC3C
BX              LR
