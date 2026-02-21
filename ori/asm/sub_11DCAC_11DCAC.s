LDR             R0, =byte_6CF938
LDR             R0, [R0,#(dword_6CF940 - 0x6CF938)]
CMP             R0, #0
BEQ             locret_11DCC0
B               sub_12510C
BX              LR
