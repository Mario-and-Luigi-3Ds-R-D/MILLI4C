PUSH            {R4-R6,LR}
MOV             R4, R1
CMP             R4, #0x400
MOV             R5, R0
MOV             R1, R2
MOVEQ           R6, #0
BEQ             loc_110334
SUB             R0, R4, #0x400
SUBS            R0, R0, #1
MOVEQ           R6, #1
BEQ             loc_110334
CMP             R0, #0xF
MOVNE           R6, #0xFFFFFFFF
MOVEQ           R6, #2
ADD             R0, R5, #0x138
BL              sub_11CC04
CMP             R4, #0x400
MOVEQ           R2, #0xF0
BEQ             loc_110388
SUB             R0, R4, #0x400
SUBS            R0, R0, #1
CMPNE           R0, #0xF
MOVEQ           R2, #0xF0
MOVNE           R2, #0
CMP             R0, #0
MOVEQ           R3, #0x140
BEQ             loc_110374
CMP             R0, #0xF
MOVNE           R3, #0
BEQ             loc_110388
MOV             R1, #0
MOV             R0, R1
BL              sub_126B5C
STRB            R6, [R5,#0x195]
POP             {R4-R6,PC}
MOV             R3, #0x190
B               loc_110374
