LDR             R2, [R2]
ADD             R0, R0, R1,LSL#2
STR             R2, [R0,#0x7C]
BX              LR
