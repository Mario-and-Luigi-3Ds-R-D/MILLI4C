CMP             R0, #0x400
BEQ             loc_11C43C
SUB             R0, R0, #0x400
SUBS            R0, R0, #1
MOVEQ           R0, #0x140
BEQ             locret_11C440
CMP             R0, #0xF
MOVNE           R0, #0
BNE             locret_11C440
MOV             R0, #0x190
BX              LR
