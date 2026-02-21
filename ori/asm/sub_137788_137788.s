LDR             R0, [R0,#8]
CMP             R0, #0
LDRNE           R0, [R0,#0x10]
LDREQ           R0, =0x270F
BX              LR
