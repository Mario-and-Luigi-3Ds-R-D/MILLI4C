LDR             R1, =off_6D1648
LDR             R2, [R3,#8]
MOV             R0, #0
LDR             R1, [R1]
ADD             R2, R1, R2,LSL#2
LDR             R2, [R2,#0xBC]
ADD             R2, R2, #0x13C00
ADD             R2, R2, #0x28 ; '('
STR             R0, [R2]
LDR             R2, [R3,#8]
ADD             R1, R1, R2,LSL#2
LDR             R1, [R1,#0xBC]
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x2C ; ','
STR             R0, [R1]
BX              LR
