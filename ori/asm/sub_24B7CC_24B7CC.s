LDR             R1, =off_6BBAA4
STR             R1, [R0],#0x20
LDR             R1, =off_6C0770
STR             R1, [R0]
LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             loc_24B7F4
MOV             R2, #0
STR             R2, [R1,#0x64]
STR             R2, [R0,#4]
SUB             R0, R0, #0x20 ; ' '
BX              LR
