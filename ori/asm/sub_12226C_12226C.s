LDRB            R1, [R0]
CMP             R1, #0
BEQ             locret_122288
MOV             R2, #0xFFFFFFFF
MOV             R1, #0
STR             R2, [R0,#0x3C]
STRB            R1, [R0]
BX              LR
