CMP             R1, #0
LDRB            R1, [R0,#7]
ORRNE           R1, R1, #1
BICEQ           R1, R1, #1
STRB            R1, [R0,#7]
LDR             R0, [R0,#0x68]
AND             R1, R1, #0xFF
NOP
LDRH            R2, [R0,#0x6C]
STRB            R1, [R0,#0xF]
ORR             R1, R2, #4
STRH            R1, [R0,#0x6C]
BX              LR
