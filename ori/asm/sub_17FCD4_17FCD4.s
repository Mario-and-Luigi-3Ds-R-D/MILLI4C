PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
MOV             R4, R0
LDR             R0, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R4,#4]
SXTB            R3, R0
MOV             R0, R4
BLX             R12
MOV             R5, R0
LDR             R0, [R0]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #5
LDR             R0, [R4,#4]
MOV             R2, #0
MOV             R3, #1
ADD             R0, R0, #0x15000
LDR             R1, [R0,#0x20]
LDRB            R0, [R1,#0xC1C]
BEQ             loc_17FD60
CMP             R0, #0
MOVNE           R0, #0
BEQ             loc_17FD58
ADD             R12, R1, R0,LSL#5
LDR             R12, [R12,#0x1C]
CMP             R12, #0
BEQ             loc_17FDB4
ADD             R0, R0, #1
CMP             R0, #0x60 ; '`'
BLT             loc_17FD3C
MOV             R0, #0
POP             {R4-R6,PC}
CMP             R0, #0
MOVNE           R0, #0
BEQ             loc_17FD58
ADD             R12, R1, R0,LSL#5
LDR             R12, [R12,#0x1C]
CMP             R12, #0
BEQ             loc_17FD8C
ADD             R0, R0, #1
CMP             R0, #0x60 ; '`'
BLT             loc_17FD6C
B               loc_17FD58
ADD             R0, R1, R0,LSL#5
ADD             R0, R0, #0x1C
CMP             R5, #0
ADDNE           R1, R5, #0x400
STRB            R3, [R0,#4]
ADDNE           R1, R1, #0x358
STRB            R2, [R0,#5]
MOVEQ           R1, #0
STRB            R2, [R0,#6]
B               loc_17FDD8
ADD             R0, R1, R0,LSL#5
ADD             R0, R0, #0x1C
CMP             R5, #0
ADDNE           R1, R5, #0x400
STRB            R3, [R0,#4]
ADDNE           R1, R1, #0x358
STRB            R2, [R0,#5]
MOVEQ           R1, #0
STRB            R3, [R0,#6]
STR             R1, [R0]
B               loc_17FD58
