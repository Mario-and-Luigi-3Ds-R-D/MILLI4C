LDRH            R3, [R0,#0x36]
ADD             R2, R0, #0x24 ; '$'
AND             R1, R1, #1
AND             R0, R3, #1
BIC             R3, R3, #1
ORR             R1, R1, R3
STRH            R1, [R2,#0x12]
BX              LR
