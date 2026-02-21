PUSH            {R0,R1,R4-R11,LR}
SUB             SP, SP, #0xC
MOV             R9, R0
MOV             R0, #0
MOV             R7, R0
STR             R0, [SP,#0x38+var_34]
LDR             R0, [R9,#0xC]
MOV             R11, #1
STR             R0, [SP,#0x38+var_38]
NOP
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_1241C4
LDR             R0, [R9,#4]
BL              sub_12B574
CMP             R0, #0
NOP
BNE             loc_1241C4
LDR             R0, [SP,#0x38+var_38]
MOV             R1, #0xC8
BL              sub_1348CC
CMP             R0, #0
NOP
BNE             loc_1240E4
LDR             R0, [SP,#0x38+var_38]
MOV             R1, #0x64 ; 'd'
BL              sub_1348CC
CMP             R0, #0
NOP
BEQ             loc_1241C4
LDR             R0, [SP,#0x38+var_38]
BL              sub_12B910
MOV             R8, R0
ADD             R10, R0, #0x20 ; ' '
LDR             R0, [SP,#0x38+var_38]
LDR             R0, [R0,#0x250]
STR             R0, [SP,#0x38+var_30]
B               loc_1241B4
LDR             R0, [SP,#0x38+var_30]
MOV             R2, #0x7F
BL              sub_12BAC4
MOVS            R6, R0
NOP
BEQ             loc_1241A8
LDR             R0, [SP,#0x38+var_38]
ADD             R0, R0, #0x220
LDR             R1, [R0,#0x10]
CMP             R1, #0
BEQ             loc_12413C
LDR             R0, [R0,#0x24]
RSB             R0, R0, R0,LSL#3
ADD             R6, R6, R0,LSL#4
LDR             R1, [SP,#0x38+var_38]
LDR             R0, [R6]
TST             R0, #1
MOVNE           R5, #2
MOVEQ           R5, #1
LDR             R0, [R9,#4]
MOV             R2, R5
BL              sub_133F64
MOVS            R4, R0
NOP
BEQ             loc_124238
CMP             R5, #0
BLE             loc_1241A8
LDR             R0, [R4]
LDR             R1, [SP,#0x38+var_38]
MOV             R3, R6
MOV             R2, R8
BL              sub_12C2E0
LDR             R0, [R4]
NOP
LDR             R0, [R0]
SUB             R5, R5, #1
CMP             R5, #0
ORR             R7, R7, R11,LSL R0
ADD             R6, R6, #0x70 ; 'p'
ADD             R4, R4, #4
BGT             loc_124170
MOV             R0, #0xFF
STRB            R0, [R8,#7]
ADD             R8, R8, #8
LDRSB           R1, [R8,#7]
CMN             R1, #1
CMPNE           R8, R10
BNE             loc_124104
ADD             R1, R9, #8
LDR             R0, [SP,#0x38+var_38]
LDM             R1, {R1,R2}
ADD             R0, R0, #0x480
STR             R0, [SP,#0x38+var_38]
ADD             R0, R1, R1,LSL#3
ADD             R1, R2, R0,LSL#7
LDR             R0, [SP,#0x38+var_38]
CMP             R1, R0
BHI             loc_12408C
LDR             R0, [R9,#4]
MOV             R1, R7
BL              sub_133EE4
LDR             R5, [SP,#0x38+var_28]
LDR             R4, [R9,#0xC]
CMP             R5, #1
MOVLT           R5, #1
MOV             R0, R4
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_124280
MOV             R1, R5
MOV             R0, R4
BL              sub_12B894
LDR             R1, [SP,#0x38+var_34]
ORR             R0, R0, R1
STR             R0, [SP,#0x38+var_34]
B               loc_1242A0
ADD             R1, R8, #8
SUB             R2, R10, R1
MOV             R0, #0xFFFFFFFF
MOV             R3, R2,ASR#3
CMP             R3, #0
STRB            R0, [R8,#7]
BLE             loc_1241C4
MOV             R3, R2,LSL#28
SUB             R1, R1, #1
CMP             R3, #0
STRBLT          R0, [R1,#8]!
MOVS            R2, R2,ASR#4
BEQ             loc_1241C4
STRB            R0, [R1,#8]
SUBS            R2, R2, #1
STRB            R0, [R1,#0x10]!
BNE             loc_12426C
B               loc_1241C4
MOV             R0, R4
LDR             R0, [R0,#0xC]
CMP             R0, #0
NOP
BLE             loc_1242A0
MOV             R1, #0
MOV             R0, R4
BL              sub_13551C
LDRD            R0, R1, [R9,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_124208
BL              sub_1348B4
CMP             R0, #0
MOVEQ           R0, R9
BLEQ            sub_12AC0C
LDR             R0, [SP,#0x38+var_34]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
