LDR             R4, =off_6D4B90
SUB             SP, SP, #0x10
MOV             R5, #0
LDR             R2, =dword_6D4B8C
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
MOV             R3, #0
LDR             R2, [R2]
STMEA           SP, {R0-R2}
MOV             R2, #1
ADD             R1, SP, #0x10+var_8
ADD             R0, SP, #0x10+var_4
BL              sub_120250
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
MOV             R0, SP
NOP
BL              sub_119CD0
ANDS            R1, R0, #0x80000000
NOP
BMI             loc_10EDDC
LDR             R2, [R4]
LDR             R1, [SP,#0x10+var_10]
CMP             R2, #0
MOVEQ           R0, #0
BEQ             loc_10EDBC
SUBS            R0, R2, #4
BEQ             loc_10EDD8
LDR             R12, [R0,#0xC]
CMP             R12, R1
BEQ             loc_10EDBC
MOVS            R3, R0
ADDNE           R3, R0, #4
CMP             R2, #0
MOVEQ           R12, #0
BEQ             loc_10ED94
LDR             R12, [R2]
CMP             R12, #0
SUBNE           R12, R12, #4
CMP             R12, R0
BNE             loc_10EDA4
MOV             R0, R5
B               loc_10EDBC
LDR             R0, [R3,#4]
CMP             R0, #0
BEQ             loc_10EDBC
SUBS            R0, R0, #4
BNE             loc_10ED68
B               loc_10EDD8
CMP             R0, #0
BEQ             loc_10EDD8
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
MOV             R0, #0
B               loc_10EDDC
MOV             R0, #0
MOVS            R0, R0,LSR#31
BLNE            sub_128434
NOP
NOP
B               loc_10ED00
