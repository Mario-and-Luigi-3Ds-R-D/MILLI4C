MOV             R1, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0]
STRH            R1, [R0,#0xC]
STRB            R1, [R0,#0xE]
ADD             R0, R0, #0x10
NOP
