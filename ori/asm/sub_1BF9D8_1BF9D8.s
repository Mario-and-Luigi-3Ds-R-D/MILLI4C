LDR             R0, [R0,#4]
LDR             R2, =0x40C00000
ADD             R0, R0, #0x400
LDR             R1, [R0,#0x78]
CMP             R1, R2
VLDRLT          S0, =6.0
STRGE           R1, [R0,#0x8C]
VSTRLT          S0, [R0,#0x8C]
BX              LR
