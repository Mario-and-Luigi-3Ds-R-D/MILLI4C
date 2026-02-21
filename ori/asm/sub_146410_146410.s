MOV             R1, #0xFF
STRB            R1, [R0,#0x39]
STRB            R1, [R0,#0x45]
STRB            R1, [R0,#0x49]
MOV             R3, #0xFFFFFFFF
LDR             R1, =unk_6CF808
MOV             R2, #0
STRH            R3, [R0,#0x5A]
STRB            R2, [R0,#0x40]
STRB            R2, [R0,#0x41]
STR             R1, [R0,#0x30]
BX              LR
