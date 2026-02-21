LDR             R2, =off_6D1648
CMP             R1, #0
LDR             R1, [R0,#0x1B4]
LDR             R2, [R2]
BEQ             loc_19B608
BIC             R1, R1, #0x1000000
STR             R1, [R0,#0x1B4]
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x648]
ORR             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0x648]
BX              LR
ORR             R1, R1, #0x1000000
STR             R1, [R0,#0x1B4]
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x648]
BIC             R1, R1, #0x40 ; '@'
B               loc_19B600
