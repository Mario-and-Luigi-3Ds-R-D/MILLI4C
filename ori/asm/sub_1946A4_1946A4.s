ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x670
LDR             R0, [R0]
BX              LR
