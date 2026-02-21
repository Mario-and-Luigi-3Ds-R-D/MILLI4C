PUSH            {R0-R7,LR}
SUB             SP, SP, #0x1C
MOVS            R7, #0
MOVS            R4, R2
LDR             R0, [R2,#4]
MOVS            R6, R7
STR             R0, [SP,#0x40+var_3C]
LDR             R0, [R2,#8]
STR             R7, [SP,#0x40+var_38]
STR             R7, [SP,#0x40+var_34]
STR             R7, [SP,#0x40+var_30]
STR             R0, [SP,#0x40+var_40]
LDR             R1, [R2,#0x18]
LDR             R0, [SP,#0x40+var_20]
BLX             R1
MOVS            R5, R0
LDR             R1, [SP,#0x40+arg_0]
LDR             R0, [SP,#0x40+var_18]
ORRS            R0, R1
BEQ             loc_101032
B               loc_10103C
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R6, R6, #1
BLX             R1
MOVS            R5, R0
LDR             R1, [R4,#0x20]
MOVS            R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_101028
ADDS            R0, R5, #1
BEQ             loc_101048
LDR             R0, [SP,#0x40+var_3C]
LSLS            R0, R0, #0x1F
BEQ             loc_101050
B               loc_1010A0
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x2C ; ','
POP             {R4-R7,PC}
LDR             R0, [R4]
ADDS            R1, R0, #4
STR             R1, [R4]
LDR             R7, [R0]
B               loc_1010A0
LSLS            R1, R5, #0x18
ADD             R2, SP, #0x40+var_34
LSRS            R1, R1, #0x18
ADD             R0, SP, #0x40+var_2C
BL              sub_2FE010
ADDS            R1, R0, #1
BEQ             loc_10107A
ADDS            R0, R0, #2
BEQ             loc_101082
MOVS            R0, #0
STR             R0, [SP,#0x40+var_38]
LDR             R0, [SP,#0x40+var_3C]
LSLS            R0, R0, #0x1F
BEQ             loc_101088
B               loc_101090
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x40+var_20]
BLX             R1
B               loc_10110E
MOVS            R0, #1
STR             R0, [SP,#0x40+var_38]
B               loc_101096
MOV             R0, SP
LDRH            R0, [R0,#0x40+var_2C]
STRH            R0, [R7]
ADDS            R7, R7, #2
LDR             R0, [SP,#0x40+var_40]
SUBS            R0, R0, #1
STR             R0, [SP,#0x40+var_40]
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R6, R6, #1
BLX             R1
MOVS            R5, R0
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BLE             loc_1010E0
ADDS            R0, R5, #1
BEQ             loc_1010E0
LDR             R0, [SP,#0x40+var_18]
CMP             R0, #0
BEQ             loc_1010D0
ASRS            R0, R5, #0x1F
LSRS            R0, R0, #0x1B
ADDS            R0, R0, R5
ASRS            R1, R0, #5
LSRS            R0, R0, #5
LSLS            R2, R1, #2
LDR             R1, [SP,#0x40+var_18]
LSLS            R0, R0, #5
ADDS            R1, R2, R1
SUBS            R2, R5, R0
LDR             R1, [R1]
MOVS            R0, #1
LSLS            R0, R2
TST             R1, R0
BNE             loc_10105A
B               loc_1010E0
LDR             R0, [SP,#0x40+arg_0]
CMP             R0, #0
BNE             loc_10105A
LDR             R1, [R4,#0x20]
MOVS            R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_10105A
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x40+var_20]
BLX             R1
LDR             R0, [SP,#0x40+var_38]
CMP             R0, #0
BNE             loc_10110E
LDR             R0, [SP,#0x40+var_3C]
LDR             R1, [SP,#0x40+arg_0]
LSLS            R0, R0, #0x1F
LSRS            R0, R0, #0x1F
ORRS            R0, R1
BNE             loc_1010FA
STRH            R0, [R7]
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x40+var_40]
CMP             R1, R0
BLE             loc_10110E
LDR             R0, [SP,#0x40+arg_0]
CMP             R0, #0
BEQ             loc_101114
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_101114
MOVS            R0, #1
MVNS            R0, R0
B               loc_10104C
MOVS            R0, R6
B               loc_10104C
