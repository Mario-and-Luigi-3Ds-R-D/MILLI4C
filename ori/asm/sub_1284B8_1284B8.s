MOV             R2, R1
LDR             R1, =byte_6D4A28
MOV             R12, R0
LDR             R0, =0xC8A0A7F8
LDR             R3, [R1,#(dword_6D4A30 - 0x6D4A28)]
CMP             R3, #0
BEQ             locret_1284E0
MOV             R1, R12
MOV             R0, R3
B               sub_132A40
BX              LR
