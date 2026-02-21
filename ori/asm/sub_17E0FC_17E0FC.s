LDR             R0, =unk_6E8CD0
LDR             R1, [R3,#8]
STRB            R1, [R0,#(byte_6E8E77 - 0x6E8CD0)]
LDR             R1, [R3,#0xC]
STRB            R1, [R0,#(byte_6E8E78 - 0x6E8CD0)]
MOV             R0, #0
BX              LR
