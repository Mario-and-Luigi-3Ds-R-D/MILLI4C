LDR             R2, =off_6BB6C8
MOV             R1, R0
STR             R2, [R0],#0x34
LDR             R2, =off_6C075C
STR             R2, [R0]
LDR             R2, [R0,#4]
CMP             R2, #0
BEQ             loc_1CE3DC
MOV             R3, #0
STR             R3, [R2,#0x184]
STR             R3, [R0,#4]
MOV             R0, R1
B               sub_300FD4
