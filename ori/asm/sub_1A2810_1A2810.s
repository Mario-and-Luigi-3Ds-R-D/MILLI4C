ADD             R1, R0, #0x400
LDR             R0, [R0,#0x4C8]
ADD             R1, R1, #0xC8
ADD             R0, R0, #1
STR             R0, [R1]
BX              LR
