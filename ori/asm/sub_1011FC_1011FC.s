PUSH            {R0-R7,LR}
SUB             SP, SP, #0xC
MOVS            R4, R2
MOVS            R6, #0
LDR             R0, [R2,#4]
MOVS            R5, R6
STR             R0, [SP,#0x30+var_2C]
LDR             R1, [R2,#0x18]
LDR             R7, [R2,#8]
LDR             R0, [SP,#0x30+var_20]
BLX             R1
STR             R0, [SP,#0x30+var_30]
LDR             R1, [SP,#0x30+arg_8]
LDR             R0, [SP,#0x30+var_18]
ORRS            R0, R1
BEQ             loc_101228
B               loc_101232
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x30+var_30]
LDR             R1, [R4,#0x20]
LDR             R0, [SP,#0x30+var_30]
BLX             R1
CMP             R0, #0
BNE             loc_10121E
LDR             R0, [SP,#0x30+var_30]
ADDS            R0, R0, #1
BEQ             loc_101240
LDR             R0, [SP,#0x30+var_2C]
LSLS            R0, R0, #0x1F
BEQ             loc_101248
B               loc_10126A
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
LDR             R0, [R4]
ADDS            R1, R0, #4
STR             R1, [R4]
LDR             R6, [R0]
B               loc_10126A
LDR             R0, [SP,#0x30+var_2C]
LSLS            R0, R0, #0x1F
BNE             loc_10125E
LDR             R0, [SP,#0x30+var_30]
STRH            R0, [R6]
ADDS            R6, R6, #2
LDR             R1, [R4,#0x18]
SUBS            R7, R7, #1
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x30+var_30]
CMP             R7, #0
BLE             loc_10129A
LDR             R0, [SP,#0x30+var_30]
ADDS            R0, R0, #1
BEQ             loc_10129A
LDR             R0, [SP,#0x30+var_18]
CMP             R0, #0
BEQ             loc_10128A
LDR             R3, [SP,#0x30+var_30]
LDR             R2, [SP,#0x30+arg_4]
LDR             R1, [SP,#0x30+arg_0]
BL              sub_2FFE6C
CMP             R0, #0
BNE             loc_101252
B               loc_10129A
LDR             R0, [SP,#0x30+arg_8]
CMP             R0, #0
BNE             loc_101252
LDR             R1, [R4,#0x20]
LDR             R0, [SP,#0x30+var_30]
BLX             R1
CMP             R0, #0
BEQ             loc_101252
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x30+var_20]
BLX             R1
LDR             R0, [SP,#0x30+var_2C]
LDR             R1, [SP,#0x30+arg_8]
LSLS            R0, R0, #0x1F
LSRS            R0, R0, #0x1F
ORRS            R0, R1
BNE             loc_1012AE
STRH            R0, [R6]
LDR             R0, [R4,#8]
CMP             R0, R7
BLE             loc_1012BE
LDR             R0, [SP,#0x30+arg_8]
CMP             R0, #0
BEQ             loc_1012C4
CMP             R7, #0
BEQ             loc_1012C4
MOVS            R0, #1
MVNS            R0, R0
B               loc_101244
MOVS            R0, R5
B               loc_101244
