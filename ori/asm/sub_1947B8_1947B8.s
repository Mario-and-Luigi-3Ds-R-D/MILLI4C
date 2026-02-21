MOV             R2, R0
MOV             R0, R1
LDR             R1, [R2,#0xA4]
LDR             R3, [R0]
LDR             R2, [R2,#0xAC]
ADD             R1, R1, #0x20 ; ' '
LDR             R3, [R3,#0xC]
BX              R3
