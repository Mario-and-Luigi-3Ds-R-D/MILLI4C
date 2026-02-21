LDR             R0, =dword_700750
LDR             R0, [R0,#(dword_7007F0 - 0x700750)]
LDR             R1, [R0,#0x28]
LDR             R2, [R0,#0x18]
RSB             R1, R1, R1,LSL#3
ADD             R1, R2, R1,LSL#2
LDR             R2, [R1,#0xC]
TST             R2, #2
BNE             loc_11679C
LDR             R1, [R1,#8]
LDR             R2, [R0,#0x10]
ADD             R1, R1, R2
STR             R1, [R0,#0x10]
NOP
B               sub_11F86C
