LDR             R1, =byte_6CF859
MOV             R0, #0
STRB            R0, [R1]
LDR             R0, =dword_6CF85C
MOV             R1, #0xFF
STRB            R1, [R0]
STRB            R1, [R0,#(dword_6CF85C+1 - 0x6CF85C)]
STRB            R1, [R0,#(dword_6CF85C+2 - 0x6CF85C)]
STRB            R1, [R0,#(dword_6CF85C+3 - 0x6CF85C)]
BX              LR
