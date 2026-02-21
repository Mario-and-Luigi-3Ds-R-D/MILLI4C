LDR             R1, [R0,#8]
LDRSH           R1, [R1]
SUB             R1, R1, #0x21 ; '!'
CMP             R1, #2
BLS             locret_23D4BC
LDR             R0, [R0,#4]
B               loc_16C950
BX              LR
