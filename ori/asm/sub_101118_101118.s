PUSH            {R0-R7,LR}
SUB             SP, SP, #0x14
MOVS            R0, #0
MOVS            R4, R2
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R2,#4]
STR             R0, [SP,#0x38+var_34]
LDR             R6, [R2,#8]
MOVS            R0, #0
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_2C]
LDR             R1, [R2,#0x18]
MOVS            R5, R0
LDR             R0, [SP,#0x38+var_20]
BLX             R1
MOVS            R7, R0
LDR             R1, [SP,#0x38+arg_8]
LDR             R0, [SP,#0x38+var_18]
ORRS            R0, R1
BEQ             loc_10114C
B               loc_101156
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x38+var_20]
ADDS            R5, R5, #1
BLX             R1
MOVS            R7, R0
LDR             R1, [R4,#0x20]
MOVS            R0, R7
BLX             R1
CMP             R0, #0
BNE             loc_101142
ADDS            R0, R7, #1
BEQ             loc_101162
LDR             R0, [SP,#0x38+var_34]
LSLS            R0, R0, #0x1F
BEQ             loc_10116A
B               loc_10119E
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
LDR             R0, [R4]
ADDS            R1, R0, #4
STR             R1, [R4]
LDR             R0, [R0]
STR             R0, [SP,#0x38+var_38]
B               loc_10119E
LDR             R0, [SP,#0x38+var_34]
LSLS            R0, R0, #0x1F
BNE             loc_101192
LSLS            R1, R7, #0x10
LDR             R0, [SP,#0x38+var_38]
LSRS            R1, R1, #0x10
ADD             R2, SP, #0x38+var_30
BL              sub_2FF23E
ADDS            R1, R0, #1
BEQ             loc_1011F2
LDR             R1, [SP,#0x38+var_38]
ADDS            R0, R1, R0
STR             R0, [SP,#0x38+var_38]
LDR             R1, [R4,#0x18]
SUBS            R6, R6, #1
LDR             R0, [SP,#0x38+var_20]
ADDS            R5, R5, #1
BLX             R1
MOVS            R7, R0
CMP             R6, #0
BLE             loc_1011CC
ADDS            R0, R7, #1
BEQ             loc_1011CC
LDR             R0, [SP,#0x38+var_18]
CMP             R0, #0
BEQ             loc_1011BC
LDR             R2, [SP,#0x38+arg_4]
LDR             R1, [SP,#0x38+arg_0]
MOVS            R3, R7
BL              sub_2FFE6C
CMP             R0, #0
BNE             loc_101176
B               loc_1011CC
LDR             R0, [SP,#0x38+arg_8]
CMP             R0, #0
BNE             loc_101176
LDR             R1, [R4,#0x20]
MOVS            R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_101176
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x38+var_20]
BLX             R1
LDR             R0, [SP,#0x38+var_34]
LDR             R1, [SP,#0x38+arg_8]
LSLS            R0, R0, #0x1F
LSRS            R0, R0, #0x1F
ORRS            R0, R1
BNE             loc_1011E2
LDR             R1, [SP,#0x38+var_38]
STRB            R0, [R1]
LDR             R0, [R4,#8]
CMP             R0, R6
BLE             loc_1011F2
LDR             R0, [SP,#0x38+arg_8]
CMP             R0, #0
BEQ             loc_1011F8
CMP             R6, #0
BEQ             loc_1011F8
MOVS            R0, #1
MVNS            R0, R0
B               loc_101166
MOVS            R0, R5
B               loc_101166
