LDR             R1, =off_6BBAC0
LDR             R2, =off_6C0770
STR             R1, [R0]
STR             R2, [R0,#0x2C]
LDR             R2, [R0,#0x30]
ADD             R1, R0, #0x2C ; ','
CMP             R2, #0
BEQ             loc_24BB64
MOV             R3, #0
STR             R3, [R2,#0x64]
STR             R3, [R1,#4]
NOP
B               sub_300FD4
