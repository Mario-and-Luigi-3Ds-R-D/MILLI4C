ADD             R0, R0, #0xA00
LDRH            R2, [R0,#0xA8]
BIC             R2, R2, #0x20 ; ' '
ORR             R1, R2, R1,LSL#5
STRH            R1, [R0,#0xA8]
BX              LR
