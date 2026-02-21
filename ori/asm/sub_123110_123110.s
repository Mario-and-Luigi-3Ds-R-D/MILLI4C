LDR             R1, =byte_6D2468
MOV             R0, #1
STRB            R0, [R1,#(byte_6D246F - 0x6D2468)]
BX              LR
