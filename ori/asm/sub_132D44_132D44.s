ADD             R2, R0, #0x24 ; '$'
LDRSB           R0, [R0,#0x38]
STRB            R1, [R2,#0x14]
BX              LR
