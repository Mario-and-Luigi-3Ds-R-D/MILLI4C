PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
MOV             R4, R1
MOV             R6, R3
MOV             R5, R2
MOV             R1, #0
MOV             R3, SP
LDRSB           R2, [R0,R1]
CMP             R2, #0
CMPNE           R2, #0x3A ; ':'
BEQ             loc_117238
STRB            R2, [R3,R1]
ADD             R1, R1, #1
CMP             R1, #8
BLT             loc_1171D4
BL              sub_128434
LDR             R2, =unk_697120
MOV             R12, #0
MOV             LR, R12
MOV             R0, R12
LDRSB           R1, [R2,R0]
CMP             R1, #0x3A ; ':'
BEQ             loc_117284
MOV             R7, LR,LSL#8
MOV             LR, R12,LSR#24
ADD             R0, R0, #1
ORR             LR, LR, R7
CMP             R0, #8
ORR             R12, R1, R12,LSL#8
ORR             LR, LR, R1,ASR#31
BLT             loc_117208
B               loc_11727C
MOV             R12, #0
MOV             R0, #0x3A ; ':'
STRB            R0, [R3,R1]
MOV             LR, R12
MOV             R2, R3
MOV             R0, R12
LDRSB           R1, [R2,R0]
CMP             R1, #0x3A ; ':'
BEQ             loc_117284
MOV             R7, LR,LSL#8
MOV             LR, R12,LSR#24
ADD             R0, R0, #1
ORR             LR, LR, R7
CMP             R0, #8
ORR             R12, R1, R12,LSL#8
ORR             LR, LR, R1,ASR#31
BLT             loc_117250
MOV             R12, #0
MOV             LR, R12
ORRS            R0, R12, LR
LDREQ           R0, =0xE0E046BC
LDRNE           R3, =unk_700AF8
MOVNE           R1, #0
BEQ             loc_1172C0
ADD             R2, R3, R1,LSL#4
LDR             R0, [R2,#8]
CMP             R0, #0
BEQ             loc_1172C8
LDM             R2, {R0,R2}
EOR             R0, R0, R12
EOR             R2, R2, LR
ORRS            R0, R0, R2
BNE             loc_1172E8
LDR             R0, =0xC82044B4
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
ADD             R1, R3, R1,LSL#4
MOV             R0, #0
STM             R1, {R12,LR}
STR             R4, [R2,#8]
STRB            R5, [R2,#0xC]
STRB            R6, [R2,#0xD]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_117298
ADD             SP, SP, #0xC
LDR             R0, =0xD8604659
POP             {R4-R7,PC}
