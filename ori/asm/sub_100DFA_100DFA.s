PUSH            {R0-R7,LR}
SUB             SP, SP, #0xC
MOVS            R4, R2
MOVS            R7, #0
LDR             R0, [R2,#4]
MOVS            R6, R7
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R2,#8]
STR             R0, [SP,#0x30+var_30]
LDR             R1, [R2,#0x18]
LDR             R0, [SP,#0x30+var_20]
BLX             R1
MOVS            R5, R0
LDR             R1, [SP,#0x30+arg_0]
LDR             R0, [SP,#0x30+var_18]
ORRS            R0, R1
BEQ             loc_100E28
B               loc_100E32
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R6, R6, #1
BLX             R1
MOVS            R5, R0
LDR             R1, [R4,#0x20]
MOVS            R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_100E1E
ADDS            R0, R5, #1
BEQ             loc_100E3E
LDR             R0, [SP,#0x30+var_2C]
LSLS            R0, R0, #0x1F
BEQ             loc_100E46
B               loc_100E6A
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
LDR             R0, [R4]
ADDS            R1, R0, #4
STR             R1, [R4]
LDR             R7, [R0]
B               loc_100E6A
LDR             R0, [SP,#0x30+var_2C]
LSLS            R0, R0, #0x1F
BNE             loc_100E5A
STRB            R5, [R7]
ADDS            R7, R7, #1
LDR             R0, [SP,#0x30+var_30]
SUBS            R0, R0, #1
STR             R0, [SP,#0x30+var_30]
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R6, R6, #1
BLX             R1
MOVS            R5, R0
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BLE             loc_100EAA
ADDS            R0, R5, #1
BEQ             loc_100EAA
LDR             R0, [SP,#0x30+var_18]
CMP             R0, #0
BEQ             loc_100E9A
ASRS            R0, R5, #0x1F
LSRS            R0, R0, #0x1B
ADDS            R0, R0, R5
ASRS            R1, R0, #5
LSRS            R0, R0, #5
LSLS            R2, R1, #2
LDR             R1, [SP,#0x30+var_18]
LSLS            R0, R0, #5
ADDS            R1, R2, R1
SUBS            R2, R5, R0
LDR             R1, [R1]
MOVS            R0, #1
LSLS            R0, R2
TST             R1, R0
BNE             loc_100E50
B               loc_100EAA
LDR             R0, [SP,#0x30+arg_0]
CMP             R0, #0
BNE             loc_100E50
LDR             R1, [R4,#0x20]
MOVS            R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_100E50
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x30+var_20]
BLX             R1
LDR             R0, [SP,#0x30+var_2C]
LDR             R1, [SP,#0x30+arg_0]
LSLS            R0, R0, #0x1F
LSRS            R0, R0, #0x1F
ORRS            R0, R1
BNE             loc_100EBE
STRB            R0, [R7]
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x30+var_30]
CMP             R1, R0
BLE             loc_100ED2
LDR             R0, [SP,#0x30+arg_0]
CMP             R0, #0
BEQ             loc_100ED8
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_100ED8
MOVS            R0, #1
MVNS            R0, R0
B               loc_100E42
MOVS            R0, R6
B               loc_100E42
