LDR             R1, [R0,#0x120]
TST             R1, #1
BEQ             loc_19820C
TST             R1, #4
BNE             loc_19820C
ADD             R1, R0, #0x300
LDRH            R1, [R1,#0xCE]
SUB             R0, R1, #0xFF00
SUBS            R0, R0, #0xFF
MOVEQ           R0, #1
BEQ             locret_198210
MOV             R0, #0
BX              LR
