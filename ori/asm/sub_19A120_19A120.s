LDR             R0, [R0,#0x90]
CMP             R0, #0
BEQ             locret_19A138
LDR             R0, [R0,#0x120]
AND             R0, R0, #4
MOV             R0, R0,LSR#2
BX              LR
