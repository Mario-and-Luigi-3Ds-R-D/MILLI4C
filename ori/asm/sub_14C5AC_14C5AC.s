PUSH            {R4-R6,LR}
MOV             R6, R1
LDR             R0, [R0,#0xCC]
MOV             R5, #0
CMP             R0, #0
SUBSNE          R0, R0, #0x54 ; 'T'
MOVEQ           R4, #0
ADDNE           R4, R0, #0x54 ; 'T'
CMP             R4, #0
BEQ             locret_14C5F4
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x54 ; 'T'
MOV             R1, R6
BL              sub_1586A8
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_14C5D4
POP             {R4-R6,PC}
