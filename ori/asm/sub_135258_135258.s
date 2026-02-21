PUSH            {R4-R11,LR}
SUB             SP, SP, #0x3C
MOV             R4, R0
MOV             R10, #0
MOV             R5, R1
MOV             R8, R2
MOV             R11, R10
MOV             R7, R10
STR             R10, [SP,#0x60+var_4C]
STR             R10, [SP,#0x60+var_48]
STR             R10, [SP,#0x60+var_44]
STR             R10, [SP,#0x60+var_40]
BL              sub_13F210
STR             R0, [SP,#0x60+var_2C]
BL              sub_13273C
CMP             R5, #0
CMPNE           R8, #0
LDRGT           R0, [R4,#0xC]
CMPGT           R0, #0
BLE             loc_1354D4
LDR             R0, [R4,#8]
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_1354D4
LDR             R0, [R4,#0x40]
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_1354D4
LDR             R6, [R4,#0x40]
ADD             R0, R6, #0x24 ; '$'
LDRSB           R1, [R6,#0x1E]
ADD             R9, R0, R1,LSL#3
LDR             R0, [R4,#0x2C4]
CMP             R0, #0
BEQ             loc_1354C8
STR             R10, [SP,#0x60+var_5C]
STR             R10, [SP,#0x60+var_58]
STR             R10, [SP,#0x60+var_54]
STR             R10, [SP,#0x60+var_50]
LDRSB           R0, [R6,#0x1E]
MOV             R3, #0x8000
MOV             R2, R5
STR             R0, [SP,#0x60+var_60]
ADD             R1, SP, #0x60+var_5C
MOV             R0, R4
BL              sub_13F564
CMP             R0, #0
BLE             loc_1354C8
LDRSB           R1, [R6,#0x1E]
MOV             R0, R8
BL              sub_2FEFCC
MOV             R1, R0,ASR#31
MOV             R11, R0
ADD             R0, R0, R1,LSR#29
ADD             R8, SP, #0x60+var_5C
MOV             R0, R0,ASR#3
MOV             R5, #0
RSB             R0, R0, R0,LSL#3
MOV             R10, R0,LSL#1
MOV             R0, #1
STR             R0, [SP,#0x60+var_60]
LDRSB           R0, [R6,#0x1E]
CMP             R0, R5
BLE             loc_135388
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x2C4]
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_1354A0
LDR             R0, [R8]
BL              sub_1361C8
CMP             R0, #0
ADDNE           R5, R5, #1
ADDNE           R8, R8, #4
BNE             loc_13534C
B               loc_1354A0
LDR             R0, [SP,#0x60+var_60]
CMP             R0, #0
LDRNE           R0, [R4,#0x47C]
ADDNE           R1, R4, #0x400
ADDNE           R1, R1, #0x7C ; '|'
ADDNE           R0, R0, R10
BNE             loc_1353B8
B               loc_1354A0
LDR             R2, [R9,#0xC]
LDR             R3, [R9,#4]
SUB             R2, R2, R3
SUB             R0, R0, R2
STR             R0, [R1]
LDR             R0, [R4,#0x47C]
LDR             R2, [R6,#0x10]
CMP             R0, R2
LDRSBGE         R2, [R6,#0x1F]
CMPGE           R2, #0
ADDLE           R5, SP, #0x60+var_5C
MOVLE           R8, #0
BLE             loc_135490
B               loc_1353A8
ADD             R0, R4, R8,LSL#2
LDR             R9, [R0,#0x2C4]
CMP             R9, #0
BEQ             loc_135480
MOV             R0, R9
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_135480
LDR             R0, [R5]
BL              sub_1361C8
CMP             R0, #0
LDRNE           R0, [R4,#8]
CMPNE           R0, #0
BEQ             loc_135480
BL              sub_1361C8
CMP             R0, #0
LDRNE           R0, [R4,#8]
CMPNE           R0, #0
BEQ             loc_135480
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_135480
LDR             R0, [R5]
MOV             R1, #0
ADD             R3, SP, #0x60+var_3C
STR             R1, [SP,#0x60+var_30]
STM             R3, {R0,R1,R10}
LDR             R0, [R4,#8]
LDR             R1, [R0,#0x10]
MOV             R0, R9
BL              sub_13F8F8
LDR             R1, [R4,#0xC]
ADD             R2, SP, #0x60+var_3C
MOV             R0, R9
BL              sub_136104
LDR             R1, [R5]
ADD             R0, SP, #0x60+var_4C
STR             R1, [R0,R7,LSL#2]
ADD             R7, R7, #1
B               loc_135488
LDR             R0, [R5]
BL              sub_1361A4
ADD             R8, R8, #1
ADD             R5, R5, #4
LDRSB           R0, [R6,#0x1E]
CMP             R0, R8
BGT             loc_1353E0
B               loc_1354DC
ADD             R4, SP, #0x60+var_5C
ADD             R5, SP, #0x60+var_4C
B               loc_1354BC
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_1361A4
ADD             R4, R4, #4
CMP             R4, R5
BNE             loc_1354AC
B               loc_1354DC
MOV             R1, #0
MOV             R0, R4
BL              sub_13551C
MOV             R0, R5
BL              sub_1361A4
LDR             R0, [SP,#0x60+var_2C]
BL              sub_1327BC
CMP             R7, #0
BLE             loc_135514
CMP             R11, #0
MOVNE           R4, #0
ADDNE           R5, SP, #0x60+var_4C
BEQ             loc_135514
LDR             R0, [R5,R4,LSL#2]
MOV             R1, R11
BL              sub_13298C
ADD             R4, R4, #1
CMP             R4, R7
BLT             loc_1354FC
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
