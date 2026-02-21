LDR             R1, [R0,#0x10]
LDR             R1, [R1,#0x18]
LDR             R2, [R1,#0x48]
STR             R2, [R0,#4]
STR             R0, [R1,#0x48]
NOP
