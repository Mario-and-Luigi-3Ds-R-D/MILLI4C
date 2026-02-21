LDR             R1, =byte_6D4A60
MOV             R0, #1
STRB            R0, [R1,#(byte_6D4A61 - 0x6D4A60)]
BX              LR
