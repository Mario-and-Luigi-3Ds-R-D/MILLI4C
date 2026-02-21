PUSH            {R4,LR}
LDR             R4, [R0,#4]
CMP             R4, #0
BEQ             locret_1E5060
CMP             R4, #0
SUBNE           R0, R4, #0x104
MOVEQ           R0, #0
LDR             R1, [R0,#4]
LDR             R4, [R0,#0x10C]
CMP             R1, #0
BLNE            sub_592F14
CMP             R4, #0
NOP
BNE             loc_1E5038
POP             {R4,PC}
