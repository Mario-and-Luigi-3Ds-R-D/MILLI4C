LDRH            R2, [R0,#0xA]
TST             R2, #1
BEQ             loc_123D2C
LDRSH           R2, [R0,#8]
CMP             R1, #0
MOV             R2, R2,LSL#8
BGE             loc_123D14
LDR             R3, [R0]
CMP             R3, #0
STREQ           R2, [R0]
B               loc_123D2C
NOP
BLE             loc_123D2C
LDR             R3, [R0]
CMP             R3, R2
MOVEQ           R2, #0
STREQ           R2, [R0]
STRH            R1, [R0,#4]
BX              LR
