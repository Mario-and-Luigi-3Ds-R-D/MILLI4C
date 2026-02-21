LDR             R1, =off_6BBAC0
STR             R1, [R0],#0x2C
LDR             R1, =off_6C0770
STR             R1, [R0]
LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             loc_24BB9C
MOV             R2, #0
STR             R2, [R1,#0x64]
STR             R2, [R0,#4]
SUB             R0, R0, #0x2C ; ','
BX              LR
