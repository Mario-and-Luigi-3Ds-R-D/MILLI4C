LDR             R0, [R0,#0x44]
AND             R0, R0, #4
MOV             R0, R0,LSR#2
BX              LR
