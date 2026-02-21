LDR             R2, [R0,#0xC8]
BIC             R2, R2, #0x10
ORR             R1, R2, R1,LSL#4
STR             R1, [R0,#0xC8]
BX              LR
