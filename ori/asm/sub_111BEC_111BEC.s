STRB            R1, [R0,#0x29C]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0x6D0
LDR             R1, [R0]
ORR             R1, R1, #2
STR             R1, [R0]
BX              LR
