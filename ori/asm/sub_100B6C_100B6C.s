PUSH            {R0-R7,LR}
MOVS            R5, #0
MOVS            R4, R3
MVNS            R5, R5
SUB             SP, SP, #0xC
MOVS            R0, #0
STR             R0, [SP,#0x30+var_30]
STR             R0, [SP,#0x30+var_2C]
LDR             R7, [R3,#8]
LDR             R6, [R3,#4]
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x30+var_28]
LDR             R1, [R4,#0x20]
BLX             R1
CMP             R0, #0
BNE             loc_100B80
LDR             R0, [SP,#0x30+var_28]
ADDS            R0, R0, #1
BEQ             loc_100BB2
MOVS            R0, #0x600
BICS            R6, R0
CMP             R7, #0
BLE             loc_100BD6
LSLS            R0, R6, #0x19
BPL             loc_100BD0
LDR             R0, [SP,#0x30+var_28]
CMP             R0, #0x2B ; '+'
BEQ             loc_100BC0
CMP             R0, #0x2D ; '-'
BNE             loc_100BD0
B               loc_100BBA
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
MOVS            R0, #0x400
ORRS            R6, R0
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
SUBS            R7, R7, #1
CMP             R7, #0
STR             R0, [SP,#0x30+var_28]
BLE             loc_100BD6
LDR             R0, [SP,#0x30+var_28]
CMP             R0, #0x30 ; '0'
BEQ             loc_100BDE
LDR             R0, [SP,#0x30+var_1C]
CMP             R0, #0
BEQ             loc_100C28
B               loc_100C58
MOVS            R0, #1
LDR             R1, [R4,#0x18]
LSLS            R0, R0, #9
ORRS            R6, R0
SUBS            R7, R7, #1
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
CMP             R7, #0
STR             R0, [SP,#0x30+var_28]
BLE             loc_100BFC
CMP             R0, #0x78 ; 'x'
BEQ             loc_100C04
CMP             R0, #0x58 ; 'X'
BEQ             loc_100C04
LDR             R0, [SP,#0x30+var_1C]
CMP             R0, #0
BEQ             loc_100C24
B               loc_100C58
LDR             R0, [SP,#0x30+var_1C]
CMP             R0, #0
BEQ             loc_100C0E
CMP             R0, #0x10
BNE             loc_100C58
MOVS            R0, #1
LDR             R1, [R4,#0x18]
LSLS            R0, R0, #9
BICS            R6, R0
SUBS            R7, R7, #1
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x30+var_28]
MOVS            R0, #0x10
B               loc_100C2A
MOVS            R0, #8
B               loc_100C2A
MOVS            R0, #0xA
STR             R0, [SP,#0x30+var_1C]
B               loc_100C58
LDR             R2, [SP,#0x30+var_1C]
MOVS            R0, #1
LDR             R1, [SP,#0x30+var_2C]
LSLS            R0, R0, #9
ORRS            R6, R0
LDR             R0, [SP,#0x30+var_30]
SUBS            R7, R7, #1
ASRS            R3, R2, #0x1F
BLX             sub_2FFB04
LDR             R2, [SP,#0x30+var_28]
ASRS            R3, R2, #0x1F
ADDS            R0, R0, R2
ADCS            R1, R3
STR             R1, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_30]
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x30+var_28]
CMP             R7, #0
BLE             loc_100C6A
LDR             R1, [SP,#0x30+var_1C]
LDR             R0, [SP,#0x30+var_28]
BL              sub_2FFB1C
CMP             R0, #0
STR             R0, [SP,#0x30+var_28]
BGE             loc_100C2E
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x30+var_20]
BLX             R1
LSLS            R0, R6, #0x16
BMI             loc_100C7A
MOVS            R0, #1
MVNS            R0, R0
B               loc_100BB6
LSLS            R0, R6, #0x1F
BNE             loc_100C9E
LSLS            R0, R6, #0x19
BPL             loc_100CA2
LDR             R1, [SP,#0x30+var_30]
LSLS            R0, R6, #0x15
BPL             loc_100C92
LDR             R0, [SP,#0x30+var_2C]
MOVS            R2, #0
NEGS            R1, R1
SBCS            R2, R0
B               loc_100C94
LDR             R2, [SP,#0x30+var_2C]
LDR             R0, [R4]
ADDS            R3, R0, #4
STR             R3, [R4]
LDR             R0, [R0]
STM             R0!, {R1,R2}
MOVS            R0, R5
B               loc_100BB6
LDR             R0, [R4]
ADDS            R1, R0, #4
STR             R1, [R4]
LDR             R0, [R0]
LDR             R2, [SP,#0x30+var_2C]
LDR             R1, [SP,#0x30+var_30]
B               loc_100C9C
