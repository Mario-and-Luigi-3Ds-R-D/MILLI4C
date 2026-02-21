ADD             R0, R0, #0x12400
ADD             R0, R0, #0x358
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_264160
B               loc_268D48
BX              LR
