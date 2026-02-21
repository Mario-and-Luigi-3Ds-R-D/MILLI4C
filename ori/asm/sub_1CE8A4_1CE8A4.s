LDR             R2, =off_6B1648
MOV             R1, R0
STR             R2, [R0],#0x40
LDR             R2, =off_6B77D0
STR             R2, [R0],#0xC
LDR             R2, =off_6C075C
STR             R2, [R0]
LDR             R2, [R0,#4]
CMP             R2, #0
BEQ             loc_1CE8D8
MOV             R3, #0
STR             R3, [R2,#0x184]
STR             R3, [R0,#4]
MOV             R0, R1
B               sub_300FD4
