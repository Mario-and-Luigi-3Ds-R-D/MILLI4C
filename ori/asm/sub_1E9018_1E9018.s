ADD             R0, R0, R2,LSL#4
ADD             R0, R0, #0x100
STRH            R1, [R0,#0x36]
BX              LR
