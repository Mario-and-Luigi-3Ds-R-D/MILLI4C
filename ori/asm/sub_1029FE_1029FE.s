CMP             R0, #8
BEQ             loc_102A30
BGT             loc_102A12
CMP             R0, #1
BEQ             loc_102A28
CMP             R0, #2
BEQ             loc_102A24
CMP             R0, #4
BNE             loc_102A1A
B               loc_102A2C
CMP             R0, #0x10
BEQ             loc_102A34
CMP             R0, #0x1F
BEQ             loc_102A1E
MOVS            R0, #0
BX              LR
MOVS            R0, #0x3F0
BX              LR
MOVS            R0, #0x20 ; ' '
BX              LR
MOVS            R0, #0x10
BX              LR
MOVS            R0, #0x40 ; '@'
BX              LR
MOVS            R0, #0x80
BX              LR
MOVS            R0, #0x100
BX              LR
