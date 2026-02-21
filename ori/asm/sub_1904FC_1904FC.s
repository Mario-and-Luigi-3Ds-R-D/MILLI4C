ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
BX              LR
