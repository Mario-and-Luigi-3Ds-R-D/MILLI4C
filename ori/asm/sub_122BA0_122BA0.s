PUSH            {R4-R6,LR}
BL              sub_129AA0
CMP             R0, #0
LDREQ           R0, =0x202BF8
BEQ             locret_122BEC
BL              sub_129DB8
BL              sub_129C6C
MOV             R5, R0
MOVS            R0, R0,LSR#31
BNE             loc_122BE8
BL              sub_1230AC
CMP             R0, #0
BEQ             loc_122BE8
MOV             R4, #1
BL              sub_129DA8
MOV             R1, R4
ADD             R0, R0, #0x30 ; '0'
BL              sub_129C2C
MOV             R0, R5
POP             {R4-R6,PC}
