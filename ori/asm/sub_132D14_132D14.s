ADD             R2, R0, #0x24 ; '$'
LDRH            R0, [R0,#0x34]
STRH            R1, [R2,#0x10]
BX              LR
