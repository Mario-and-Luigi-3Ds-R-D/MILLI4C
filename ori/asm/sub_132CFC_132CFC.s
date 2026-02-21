CMP             R1, #0
LDREQ           R0, [R0]
LDRHNE          R0, [R0,#0xA]
ADDNE           R1, R1, #4
LDRNE           R0, [R0,R1]
BX              LR
