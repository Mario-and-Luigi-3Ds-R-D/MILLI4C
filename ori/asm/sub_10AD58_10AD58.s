PUSH            {R4-R11,LR}
MOV             R5, R0,LSR#16
SUB             SP, SP, #0xC
MOVS            R5, R5,LSL#16
MOV             R7, R1
LDR             R0, =off_6D48F8
MOV             R8, R2
MOV             R9, R3
MOVEQ           R5, #0x20000
LDR             R6, [R0]
BEQ             loc_10AD90
CMP             R5, #0x20000
CMPNE           R5, #0x30000
BNE             loc_10AE4C
LDR             R0, =off_6D2420
LDR             R11, =0x103
MOV             R10, #0
LDR             R0, [R0]
LDR             R4, [R0,#0xC]
LDR             R3, [R4]
CMP             R3, #0
BEQ             loc_10ADF0
LDR             R0, [R4,#0x14]
CMP             R0, R7
LDREQ           R0, [R4,#0xC]
CMPEQ           R0, R8
LDREQ           R0, [R4,#0x10]
CMPEQ           R0, R9
BEQ             loc_10AE4C
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_10ADEC
ADD             R0, R4, #0x3C ; '<'
MOV             R1, R11
LDM             R0, {R0,R2}
BLX             R12
STR             R10, [R4]
MOV             R0, #1
STR             R4, [SP,#0x30+var_28]
STMEA           SP, {R0,R10}
MOV             R3, #0
MOV             R2, R7
MOV             R1, R9
MOV             R0, R8
BL              sub_1150A8
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10AE38
LDR             R2, [R4,#0x40]
LDR             R3, [R4,#0x20]
MOV             R1, R11
MOV             R0, R5
BLX             R12
STR             R0, [R4],#0x3C
STR             R5, [R4]
LDR             R0, [R6]
ORR             R0, R0, #1
STR             R0, [R6]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
