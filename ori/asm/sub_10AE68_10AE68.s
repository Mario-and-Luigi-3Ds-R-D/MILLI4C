CMP             R0, #0x400
LDR             R1, =dword_700750
SUBNE           R2, R0, #0x400
SUBSNE          R2, R2, #1
SUBEQ           R0, R0, #0x400
BEQ             loc_10AE8C
CMP             R2, #0xF
MOVEQ           R0, #2
BNE             locret_10AE90
STR             R0, [R1,#(dword_700874 - 0x700750)]
BX              LR
