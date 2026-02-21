PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
CMP             R0, #0
BEQ             locret_121074
LDR             R1, [R4,#8]
MOV             R5, #0
CMP             R1, #0
BEQ             loc_121060
LDRB            R2, [R4,#0x18]
CMP             R2, #0
STREQ           R5, [R4,#8]
STREQ           R5, [R4,#0xC]
BEQ             loc_121060
SVC             0x20 ; ' '
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, =unk_70E648
MOV             R1, R4
BL              sub_1283C4
LDR             R0, [R4,#0x14]!
CMP             R0, #0
BEQ             locret_121074
SVC             0x23 ; '#'
STR             R5, [R4]
POP             {R4-R6,PC}
