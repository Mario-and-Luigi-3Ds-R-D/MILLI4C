ADD             R1, R0, #0x300
LDRH            R1, [R1,#0xCE]
SUB             R0, R1, #0xFF00
SUBS            R0, R0, #0xFF
MOVNE           R0, #1
MOVEQ           R0, #0
BX              LR
