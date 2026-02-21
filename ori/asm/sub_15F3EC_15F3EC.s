ADD             R1, R0, #0x400
MOV             R0, #0
STRH            R0, [R1,#0x68]
BX              LR
