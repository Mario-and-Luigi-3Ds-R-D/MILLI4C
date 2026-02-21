MOV             R2, R0
LDR             R0, =byte_700918
LDR             R12, =0xC449
MOV             R3, #0
STRB            R3, [R0,#(byte_700919 - 0x700918)]
STRH            R12, [R0,#(word_70091A - 0x700918)]
STRB            R3, [R0]
STR             R1, [R0,#(dword_700920 - 0x700918)]
STR             R2, [R0,#(dword_70091C - 0x700918)]
B               loc_119520
