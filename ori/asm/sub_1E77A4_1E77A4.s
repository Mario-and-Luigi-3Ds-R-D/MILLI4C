LDR             R1, [R0,#0x758]!
LDR             R2, [R1,#0x14]
ADD             R1, R0, #0x58 ; 'X'
BX              R2
