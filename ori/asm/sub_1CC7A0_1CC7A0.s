LDR             R0, [R0]
ADD             R0, R0, #0x40000
ADD             R0, R0, #0xBC00
STRH            R1, [R0,#0x62]
BX              LR
