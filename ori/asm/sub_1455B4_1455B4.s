LDR             R2, [R0,#0x1C]
CMN             R2, #1
LDRNE           R0, [R0,#0xC]
MOVEQ           R0, #0xFFFFFFFD
LDRNE           R0, [R0,R2,LSL#4]
LDRNE           R0, [R0,R1,LSL#2]
BX              LR
