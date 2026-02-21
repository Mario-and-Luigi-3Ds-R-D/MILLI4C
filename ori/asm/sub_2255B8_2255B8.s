LDRB            R1, [R0,#0x3FC]
CMP             R1, #0
BEQ             loc_2255D4
CMP             R1, #8
MOVEQ           R1, #9
STRBEQ          R1, [R0,#0x3FC]
BX              LR
NOP
NOP
