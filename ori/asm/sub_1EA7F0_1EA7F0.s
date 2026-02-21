TST             R2, #0x4000
BEQ             loc_1EA810
LDR             R0, =off_6D1648
BIC             R1, R2, #0x4000
LDR             R0, [R0]
LDR             R0, [R0,#0x78]
ADD             R0, R0, R1,LSL#6
BX              LR
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x9C
LDR             R0, [R0]
ADD             R0, R0, R2,LSL#6
BX              LR
