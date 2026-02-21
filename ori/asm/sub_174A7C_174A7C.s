ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
LDRB            R0, [R1,#0xC]
ANDS            R0, R0, #0xF
MOVNE           R0, #1
BX              LR
