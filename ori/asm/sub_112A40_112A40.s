PUSH            {R4-R6,LR}
LDR             R6, =dword_6D4598
LDR             R1, [R6]
CMP             R1, #0
LDREQ           R4, =unk_70A1B0
STREQ           R4, [R6]
BNE             loc_112B04
MOV             R5, R0
LDR             R0, =off_6C3010
STR             R0, [R4]
BL              sub_1242D4
STMIB           R4, {R0,R5}
ADD             R0, R5, R5,LSL#3
MOV             R2, #1
MOV             R0, R0,LSL#7
MOV             R1, R2
BL              sub_12477C
MOV             R2, #1
STR             R0, [R4,#0xC]
MOV             R1, R2
MOV             R0, #0x60 ; '`'
BL              sub_12477C
STR             R0, [R4,#0x10]
LDR             R0, =dword_70A1C4
BL              sub_118AE8
LDR             R5, [R6]
LDR             R4, [R5,#0xC]
CMP             R4, #0
BEQ             loc_112AD4
MOVS            R0, R4
BLNE            sub_11D880
LDRD            R0, R1, [R5,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_112AB4
LDR             R5, =unk_70A1D0
MOV             R4, #0
ADDS            R0, R5, R4,LSL#5
BEQ             loc_112AF0
MOV             R2, #0x20 ; ' '
MOV             R1, #0
BL              sub_12B588
ADD             R4, R4, #1
CMP             R4, #0x100
BLT             loc_112ADC
STR             R5, [R6,#(dword_6D459C - 0x6D4598)]
STR             R5, [R6,#(dword_6D45A0 - 0x6D4598)]
LDR             R0, [R6]
POP             {R4-R6,PC}
