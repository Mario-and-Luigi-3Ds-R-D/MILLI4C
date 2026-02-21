LDR             R0, =byte_6D23B8
LDR             R1, [R0,#(dword_6D23BC - 0x6D23B8)]
ADD             R1, R1, #1
BICS            R1, R1, #0x80000000
STR             R1, [R0,#(dword_6D23BC - 0x6D23B8)]
MOVEQ           R1, #1
STREQ           R1, [R0,#(dword_6D23BC - 0x6D23B8)]
MOV             R0, R1
BX              LR
