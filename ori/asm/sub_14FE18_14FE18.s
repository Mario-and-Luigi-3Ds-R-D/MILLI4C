LDR             R1, =off_6ACE7C
STR             R1, [R0],#0x1C
LDR             R1, =off_6C075C
STR             R1, [R0]
LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             loc_14FE40
MOV             R2, #0
STR             R2, [R1,#0x184]
STR             R2, [R0,#4]
SUB             R0, R0, #0x1C
B               sub_300FD4
