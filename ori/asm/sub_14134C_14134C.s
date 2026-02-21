LDR             R2, =0x55555555
LDR             R1, =0x33333333
AND             R2, R2, R0,LSR#1
SUB             R0, R0, R2
AND             R2, R0, R1
AND             R0, R1, R0,LSR#2
LDR             R1, =0xF0F0F0F
ADD             R0, R0, R2
ADD             R0, R0, R0,LSR#4
AND             R0, R0, R1
ADD             R0, R0, R0,LSR#8
ADD             R0, R0, R0,LSR#16
AND             R0, R0, #0x3F ; '?'
BX              LR
