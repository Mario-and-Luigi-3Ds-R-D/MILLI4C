CMP             R0, #0
LDREQ           R0, =0xE0E046BC
BEQ             locret_1209A0
LDR             R2, [R0]
LDR             R2, [R2,#0x14]
BX              R2
BX              LR
