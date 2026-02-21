MOV             R1, #0
STRB            R1, [R0,#0x56C]
STRB            R1, [R0,#0xF6]
MOV             R1, #2
STRB            R1, [R0,#0x3F8]
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             locret_27D9C4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BX              R1
BX              LR
