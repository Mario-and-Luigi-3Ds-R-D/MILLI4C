ADD             R1, R0, #0x100
LDM             R1, {R1,R2}
CMP             R2, R1
MOVNE           R3, #0
BEQ             locret_26AE08
LDR             R2, [R1],#0xC
STRB            R3, [R2,#0x3F5]
LDR             R2, [R0,#0x104]
CMP             R2, R1
BNE             loc_26ADF4
BX              LR
