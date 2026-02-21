MOV             R2, #0
PUSH            {R4-R6}
MOV             R1, R2
MOV             R3, R2
LDRSB           R12, [R0,R3]
CMP             R12, #0x3A ; ':'
BEQ             loc_12004C
MOV             R5, R1,LSL#8
MOV             R1, R2,LSR#24
ADD             R3, R3, #1
ORR             R1, R1, R5
CMP             R3, #8
ORR             R2, R12, R2,LSL#8
ORR             R1, R1, R12,ASR#31
BLT             loc_120018
MOV             R2, #0
MOV             R1, R2
ORRS            R0, R2, R1
LDRNE           R3, =unk_700AF8
MOVNE           R12, #0
BEQ             loc_1200B8
ADD             R4, R3, R12,LSL#4
LDM             R4, {R0,R5}
EOR             R6, R2, R0
EOR             R0, R1, R5
ORRS            R0, R0, R6
BNE             loc_12007C
ADD             R0, R3, R12,LSL#4
B               loc_12009C
LDR             R5, [R4,#0x10]!
LDR             R0, [R4,#4]
EOR             R4, R2, R5
EOR             R0, R0, R1
ORRS            R0, R0, R4
BNE             loc_1200AC
ADD             R0, R3, R12,LSL#4
ADD             R0, R0, #0x10
CMP             R0, #0
LDRNE           R0, [R0,#8]
BNE             loc_1200BC
B               loc_1200B8
ADD             R12, R12, #2
CMP             R12, #0x20 ; ' '
BLT             loc_12005C
MOV             R0, #0
POP             {R4-R6}
BX              LR
