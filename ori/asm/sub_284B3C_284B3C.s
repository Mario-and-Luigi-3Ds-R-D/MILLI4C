LDR             R1, [R0,#4]
MOV             R2, #4
ADD             R1, R1, #0x12C00
ADD             R1, R1, #0x1C
STRB            R2, [R1]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
NOP
