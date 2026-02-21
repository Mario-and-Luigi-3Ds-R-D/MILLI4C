LDR             R0, [R0,#0xAA8]
CMP             R0, #0
VLDREQ          S0, =0.0
BEQ             locret_1C8074
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BX              R2
BX              LR
