MOV             R1, #1
MOV             R3, #5
STRB            R1, [R0,#0x68]
MOV             R2, #0
STRB            R3, [R0,#0x6A]
STRB            R2, [R0,#0x69]
STRB            R1, [R0,#0x6D]
STRB            R2, [R0,#0x6E]
LDRB            R2, [R0,#0x64]
STRB            R1, [R0,#0x65]
ORR             R2, R2, #1
AND             R2, R2, #0xFF
ORR             R2, R2, #0x70 ; 'p'
STRB            R2, [R0,#0x64]
LDRB            R2, [R0,#0x5C]
BIC             R2, R2, #1
STRB            R2, [R0,#0x5C]
STRB            R1, [R0,#0x70]
STRB            R1, [R0,#0x71]
BX              LR
