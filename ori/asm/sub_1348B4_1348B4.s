LDR             R0, =byte_6D23B8
LDR             R0, [R0,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
MOVNE           R0, #1
BX              LR
