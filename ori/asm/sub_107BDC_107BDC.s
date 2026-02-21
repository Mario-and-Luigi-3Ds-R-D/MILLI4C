ADD             R0, R0, #0xC
NOP
LDRB            R3, [R0,#0xC]
CMP             R2, #0x91
MOVGT           R2, #0x91
CMP             R3, #0
BEQ             loc_107C18
CMP             R3, #1
STRHNE          R2, [R0,#0xA]
BNE             locret_107C14
CMP             R1, #0x24 ; '$'
MOVLT           R1, #0x24 ; '$'
STRH            R1, [R0,#2]
STRH            R2, [R0,#8]
BX              LR
CMP             R1, #0x28 ; '('
MOVLT           R1, #0x28 ; '('
STRH            R1, [R0]
STRH            R2, [R0,#6]
BX              LR
