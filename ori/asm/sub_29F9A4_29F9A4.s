LDR             R1, [R0,#0xB0]
CMP             R1, #0
LDRBNE          R2, [R0,#0xB4]
CMPNE           R2, #0
LDRBNE          R0, [R0,#0xB9]
MOVEQ           R0, #0
ADDNE           R0, R0, R0,LSL#2
ADDNE           R0, R1, R0,LSL#2
BX              LR
