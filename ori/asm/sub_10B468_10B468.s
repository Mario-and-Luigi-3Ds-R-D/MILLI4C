LDR             R2, =dword_700750
LDR             R3, [R2,#(dword_700874 - 0x700750)]
ADD             R3, R2, R3,LSL#2
STR             R0, [R3,#0x134]
LDR             R0, [R2,#(dword_700874 - 0x700750)]
ADD             R0, R2, R0,LSL#2
STR             R1, [R0,#0x140]
BX              LR
