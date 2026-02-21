LDR             R3, =dword_6EF02C
PUSH            {R4-R6,LR}
ADD             R2, R3, #4
LDRH            R4, [R3,#(word_6EF038 - 0x6EF02C)]
LDM             R2, {R2,R12}
ADD             R5, R2, R4,LSL#3
CMP             R5, R12
MOV             R4, #0
BLS             loc_10D2E0
ADD             R5, R12, #8
MOV             R2, R12
STR             R5, [R3,#(dword_6EF034 - 0x6EF02C)]
B               loc_10D304
CMP             R12, R2
BEQ             loc_10D310
LDR             R3, [R2]
CMP             R3, #0
BEQ             loc_10D304
ADD             R2, R2, #8
CMP             R12, R2
BNE             loc_10D2E8
B               loc_10D310
CMP             R2, #0
MOVNE           R12, #0x81000000
STMNE           R2, {R0,R12}
ADD             R0, R0, #4
MOV             R2, #1
STR             R4, [R0,#0xC]
STR             R4, [R0,#0x10]
STR             R4, [R0,#4]
STR             R4, [R0,#8]
BL              sub_10D7A8
MOV             R0, R0,LSR#31
EOR             R0, R0, #1
POP             {R4-R6,PC}
