TST             R0, #0x80000000
MOV             R2, R0,LSR#27
SUBNE           R2, R2, #0x20 ; ' '
CMP             R2, #1
CMNNE           R2, #7
BEQ             locret_121620
LDR             R2, =byte_700918
LDR             R12, =0xC449
MOV             R3, #0
STRB            R3, [R2,#(byte_700919 - 0x700918)]
STRH            R12, [R2,#(word_70091A - 0x700918)]
STRB            R3, [R2]
STRD            R0, R1, [R2,#(dword_70091C - 0x700918)]
MOV             R0, R2
B               loc_119520
BX              LR
