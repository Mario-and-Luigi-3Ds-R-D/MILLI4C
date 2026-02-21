ADD             R0, R0, R2,LSL#4
LDRH            R2, [R0,#0xFA]
BIC             R2, R2, #2
ORR             R1, R2, R1,LSL#1
STRH            R1, [R0,#0xFA]
BX              LR
