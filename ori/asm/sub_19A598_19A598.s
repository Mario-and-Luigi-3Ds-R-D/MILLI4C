CMP             R1, #0
LDR             R1, [R0,#0x1B4]
LDR             R2, =off_6D1648
ORREQ           R1, R1, #0x80
BICNE           R1, R1, #0x80
STR             R1, [R0,#0x1B4]
LDR             R0, [R2]
AND             R1, R1, #0x80
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x14]
BIC             R2, R2, #0x80
ORR             R1, R1, R2
STR             R1, [R0,#0x14]
BX              LR
