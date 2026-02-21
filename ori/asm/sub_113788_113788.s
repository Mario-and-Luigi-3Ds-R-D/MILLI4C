LDR             R0, =byte_6D4158
LDR             R1, [R0,#(dword_6D415C - 0x6D4158)]
CMP             R1, #0
BEQ             locret_1137AC
LDR             R2, =dword_7097E0
MOV             R1, #0xFFFFFFFF
STR             R1, [R2,#(dword_7097E8 - 0x7097E0)]
MOV             R1, #0
STR             R1, [R0,#(dword_6D415C - 0x6D4158)]
BX              LR
