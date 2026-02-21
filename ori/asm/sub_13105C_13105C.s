PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC
LDR             R8, =off_6D48F8
LDR             R0, [R8]
ADD             R1, R0, #0x400
LDR             R2, [R0,#8]
ADD             R9, R0, #0x400
ADD             R1, R1, #0x1D8
TST             R2, #0x200
ADD             R9, R9, #0x58 ; 'X'
ADD             R10, R0, #0x298
ADD             R5, R0, #0x6A0
BEQ             loc_1310A4
LDR             R2, [R1,#4]
CMP             R2, #0
MOVNE           R3, #1
MOVEQ           R3, #0
STRB            R3, [R0,#0x81C]
MOV             R2, #0
STRB            R2, [R5,#0xCC]
LDR             R1, [R1]
LDR             R6, =off_6D4920
MOV             R7, #1
CMP             R1, #0
BEQ             loc_131108
LDR             R1, [R6]
LDR             R1, [R1,#0x80C]
CMP             R1, #0
LDRNE           R4, [R1,#8]
MOVNE           R11, R5
BEQ             loc_1310F0
LDR             R0, [R4]
BL              sub_13BC34
STR             R0, [R11]
LDR             R0, [R4,#8]
STR             R0, [R11,#0x48]
B               loc_131110
MOV             R0, #0x10
STRB            R7, [R5,#0xCC]
BL              sub_1313A0
NOP
NOP
B               loc_131110
MOV             R0, #0x10
BL              sub_1313A0
MOV             R4, #0
MOV             R11, R4
ADD             R0, R4, R4,LSL#1
ADD             R1, R9, R0,LSL#3
LDRB            R2, [R1,#0x15]
CMP             R2, #0
BEQ             loc_13124C
LDR             R1, [R1,#0x10]
CMP             R1, #0
BEQ             loc_131238
LDR             R1, [R6]
ADD             R1, R1, R4,LSL#2
LDR             R1, [R1,#0x810]
CMP             R1, #0
BEQ             loc_13121C
LDR             R7, [R1,#8]
LDR             R1, =off_6D48F8
CMP             R4, #0x10
LDR             R1, [R1]
ADD             R8, R1, #0x6A0
BEQ             loc_1311EC
ADD             R1, R1, #0x400
ADD             R1, R1, #0x58 ; 'X'
LDR             R2, [R7]
ADD             R0, R1, R0,LSL#3
STR             R0, [SP,#0x30+var_30]
LDR             R1, [R0]
STR             R0, [SP,#0x30+var_2C]
ADD             R0, R2, R1
BL              sub_13BC34
ADD             R1, R8, R4,LSL#2
STR             R0, [R1,#4]
LDR             R0, [SP,#0x30+var_2C]
LDR             R2, [R7,#8]
LDR             R0, [R0]
ADD             R0, R0, R2
STR             R0, [R1,#0x4C]
LDR             R0, [SP,#0x30+var_2C]
LDR             R0, [R0,#8]
CMP             R0, #0x1400
SUBNE           R0, R0, #0x1400
SUBSNE          R0, R0, #1
MOVEQ           R0, #1
BEQ             loc_1311D8
CMP             R0, #1
MOVEQ           R0, #2
BEQ             loc_1311D8
CMP             R0, #5
MOVNE           R0, #0
MOVEQ           R0, #4
LDR             R2, [SP,#0x30+var_30]
LDR             R2, [R2,#0xC]
CMP             R2, #0
BNE             loc_131214
B               loc_131208
LDR             R0, [R7]
BL              sub_13BC34
STR             R0, [R8]
LDR             R0, [R7,#8]
STR             R0, [R8,#0x48]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDR             R2, [SP,#0x30+var_30]
LDR             R2, [R2,#4]
MUL             R2, R2, R0
STR             R2, [R1,#0x8C]
B               loc_13125C
MOV             R0, #1
STRB            R0, [R5,#0xCC]
MOV             R0, R4
BL              sub_1313A0
NOP
NOP
B               loc_13125C
MOV             R0, R4
BL              sub_1313A0
NOP
NOP
B               loc_13125C
ADD             R0, R5, R4,LSL#2
ADD             R1, R10, R4,LSL#4
STR             R1, [R0,#0x4C]!
STR             R11, [R0,#0x40]
ADD             R4, R4, #1
CMP             R4, #0x10
BLT             loc_131118
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
