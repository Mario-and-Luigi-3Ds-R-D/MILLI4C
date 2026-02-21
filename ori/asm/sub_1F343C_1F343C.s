TST             R2, #0x4000
BEQ             loc_1F345C
LDR             R0, =off_6D1648
BIC             R1, R2, #0x4000
ADD             R1, R1, R1,LSL#1
LDR             R0, [R0]
LDR             R0, [R0,#0x60]
B               loc_1F3470
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x94
ADD             R1, R2, R2,LSL#1
LDR             R0, [R0]
ADD             R0, R0, R1,LSL#5
BX              LR
