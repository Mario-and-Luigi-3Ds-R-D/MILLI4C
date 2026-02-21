LDR             R1, =off_6C075C
STR             R1, [R0]
LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1533B4
MOV             R2, #0
STR             R2, [R1,#0x184]
STR             R2, [R0,#4]
NOP
B               sub_300FD4
