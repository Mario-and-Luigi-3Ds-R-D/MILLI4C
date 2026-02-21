PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R4, [R0,#0xC]
MOV             R0, R4
BL              sub_12CD2C
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_1246F8
LDRD            R0, R1, [R5,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_11CD60
POP             {R4-R6,PC}
