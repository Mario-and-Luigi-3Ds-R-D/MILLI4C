ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BX              R1
