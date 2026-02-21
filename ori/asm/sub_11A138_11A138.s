LDR             R0, =byte_6D2468
LDR             R0, [R0,#(dword_6D2480 - 0x6D2468)]
AND             R0, R0, #7
CMP             R0, #2
MOVEQ           R0, #1
MOVNE           R0, #0
BX              LR
