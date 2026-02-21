PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R0, [R0,#0xAC]
CMP             R0, #0
SUBSNE          R0, R0, #0x188
MOVEQ           R4, #0
ADDNE           R4, R0, #0x188
CMP             R4, #0
BEQ             locret_14C5A8
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x188
LDR             R1, [R0,#0x19C]
TST             R1, #0x200000
BLEQ            sub_533330
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_14C584
POP             {R4-R6,PC}
