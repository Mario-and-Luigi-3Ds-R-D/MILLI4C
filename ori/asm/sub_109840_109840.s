PUSH            {R4-R8,LR}
CMP             R1, #0
MOV             R5, R0
ADDNE           R0, R5, #0x7000
ADDNE           R0, R0, #0x20 ; ' '
LDREQ           R0, =0x7020
MOV             R7, #0
STRHEQ          R7, [R0,R5]
BLNE            sub_11D1D8
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
ADD             R6, R0, #0x7000
LDR             R0, [R6,#0x220]
CMP             R0, #0
BEQ             loc_109884
BL              sub_1361A4
STR             R7, [R6,#0x220]
ADD             R0, R5, R4,LSL#12
ADD             R0, R0, #0x20 ; ' '
MOV             R2, #0x1000
MOV             R1, #0
BL              sub_12B588
ADD             R4, R4, #1
CMP             R4, #7
BLT             loc_109868
MOV             R0, R5
POP             {R4-R8,LR}
B               sub_112E04
