CMP             R1, #0
LDRB            R1, [R0,#7]
ORRNE           R1, R1, #2
BICEQ           R1, R1, #2
STRB            R1, [R0,#7]
LDR             R0, [R0,#0x68]
AND             R1, R1, #0xFF
B               loc_13EF7C
