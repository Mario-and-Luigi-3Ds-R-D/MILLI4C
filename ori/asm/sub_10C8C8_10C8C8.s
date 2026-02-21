LDR             R3, =dword_700750
STR             R2, [R3,#(off_7008C0 - 0x700750)]!
ADD             R3, R3, #8
STM             R3, {R0,R1}
BX              LR
