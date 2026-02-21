CMN             R3, #1
ADDNE           R0, R2, R3,LSL#2
ADDNE           R0, R0, #0x14000
LDREQ           R0, [R1,#0x80]
LDRNE           R0, [R0,#0x184]
BX              LR
