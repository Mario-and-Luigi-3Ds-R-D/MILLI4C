LDR             R1, =off_6D48F8
CMP             R0, #0x10
LDR             R2, [R1]
ADD             R3, R2, #0x400
ADD             R1, R2, #0x6A0
ADD             R3, R3, #0x58 ; 'X'
BEQ             loc_13141C
ADD             R12, R0, R0,LSL#1
ADD             R2, R1, R0,LSL#2
ADD             R1, R3, R12,LSL#3
LDR             R0, [R1]
STR             R0, [R2,#4]
STR             R0, [R2,#0x4C]
LDR             R0, [R1,#8]
CMP             R0, #0x1400
SUBNE           R0, R0, #0x1400
SUBSNE          R0, R0, #1
MOVEQ           R0, #1
BEQ             loc_131404
CMP             R0, #1
MOVEQ           R0, #2
BEQ             loc_131404
CMP             R0, #5
MOVNE           R0, #0
MOVEQ           R0, #4
LDR             R3, [R1,#0xC]
CMP             R3, #0
LDREQ           R1, [R1,#4]
MULEQ           R3, R1, R0
STR             R3, [R2,#0x8C]
BX              LR
MOV             R0, #0
STR             R0, [R1]
STR             R0, [R1,#0x48]
BX              LR
