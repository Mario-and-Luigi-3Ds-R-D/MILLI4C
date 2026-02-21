LDR             R0, =byte_6D4B6C
LDRSB           R1, [R0]
LDRSB           R2, [R0,#(byte_6D4B6D - 0x6D4B6C)]
TST             R1, R2
BEQ             locret_119AD4
MOV             R2, #1
MOV             R1, #0
STRB            R2, [R0,#(byte_6D4B6F - 0x6D4B6C)]
STRB            R1, [R0,#(byte_6D4B6D - 0x6D4B6C)]
STRB            R1, [R0,#(byte_6D4B6E - 0x6D4B6C)]
MCR             p15, 0, R1,c7,c10, 4
ADD             R0, R0, #8
B               sub_118998
BX              LR
