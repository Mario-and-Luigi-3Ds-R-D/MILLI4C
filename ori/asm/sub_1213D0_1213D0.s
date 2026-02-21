LDR             R2, =byte_6D4A28
MOV             R1, R0
LDR             R0, =0xC8A0A7F8
LDR             R2, [R2,#(dword_6D4A30 - 0x6D4A28)]
CMP             R2, #0
BEQ             locret_1213F0
MOV             R0, R2
B               sub_128650
BX              LR
