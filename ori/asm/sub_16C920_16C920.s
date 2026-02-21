ADD             R3, R0, #0x400
MOV             R2, #0x10
ADD             R0, R0, #0x2600
STRH            R2, [R3,#0x68]
STRH            R1, [R0,#0x84]
BX              LR
