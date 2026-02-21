PUSH            {R0-R7,LR}
MOVS            R7, #0
MOVS            R5, R3
MVNS            R7, R7
SUB             SP, SP, #0xC
LDR             R4, [R3,#4]
MOVS            R0, #0
STR             R0, [SP,#0x30+var_2C]
LDR             R6, [R3,#8]
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R7, R7, #1
BLX             R1
STR             R0, [SP,#0x30+var_30]
LDR             R1, [R5,#0x20]
BLX             R1
CMP             R0, #0
BNE             loc_100CC2
LDR             R0, [SP,#0x30+var_30]
ADDS            R0, R0, #1
BEQ             loc_100CF4
MOVS            R0, #0x600
BICS            R4, R0
CMP             R6, #0
BLE             loc_100D18
LSLS            R0, R4, #0x19
BPL             loc_100D12
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0x2B ; '+'
BEQ             loc_100D02
CMP             R0, #0x2D ; '-'
BNE             loc_100D12
B               loc_100CFC
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
MOVS            R0, #0x400
ORRS            R4, R0
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R7, R7, #1
BLX             R1
SUBS            R6, R6, #1
CMP             R6, #0
STR             R0, [SP,#0x30+var_30]
BLE             loc_100D18
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0x30 ; '0'
BEQ             loc_100D20
LDR             R0, [SP,#0x30+var_1C]
CMP             R0, #0
BEQ             loc_100D6A
B               loc_100D8C
MOVS            R0, #1
LDR             R1, [R5,#0x18]
LSLS            R0, R0, #9
ORRS            R4, R0
SUBS            R6, R6, #1
LDR             R0, [SP,#0x30+var_20]
ADDS            R7, R7, #1
BLX             R1
CMP             R6, #0
STR             R0, [SP,#0x30+var_30]
BLE             loc_100D3E
CMP             R0, #0x78 ; 'x'
BEQ             loc_100D46
CMP             R0, #0x58 ; 'X'
BEQ             loc_100D46
LDR             R0, [SP,#0x30+var_1C]
CMP             R0, #0
BEQ             loc_100D66
B               loc_100D8C
LDR             R0, [SP,#0x30+var_1C]
CMP             R0, #0
BEQ             loc_100D50
CMP             R0, #0x10
BNE             loc_100D8C
MOVS            R0, #1
LDR             R1, [R5,#0x18]
LSLS            R0, R0, #9
BICS            R4, R0
SUBS            R6, R6, #1
LDR             R0, [SP,#0x30+var_20]
ADDS            R7, R7, #1
BLX             R1
STR             R0, [SP,#0x30+var_30]
MOVS            R0, #0x10
B               loc_100D6C
MOVS            R0, #8
B               loc_100D6C
MOVS            R0, #0xA
STR             R0, [SP,#0x30+var_1C]
B               loc_100D8C
MOVS            R1, #1
LDR             R2, [SP,#0x30+var_1C]
LSLS            R1, R1, #9
ORRS            R4, R1
LDR             R1, [SP,#0x30+var_2C]
SUBS            R6, R6, #1
MULS            R1, R2
ADDS            R0, R1, R0
STR             R0, [SP,#0x30+var_2C]
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x30+var_20]
ADDS            R7, R7, #1
BLX             R1
STR             R0, [SP,#0x30+var_30]
CMP             R6, #0
BLE             loc_100D9C
LDR             R1, [SP,#0x30+var_1C]
LDR             R0, [SP,#0x30+var_30]
BL              sub_2FFB1C
CMP             R0, #0
BGE             loc_100D70
LDR             R1, [R5,#0x1C]
LDR             R0, [SP,#0x30+var_20]
BLX             R1
LSLS            R0, R4, #0x16
BMI             loc_100DAC
MOVS            R0, #1
MVNS            R0, R0
B               loc_100CF8
LSLS            R0, R4, #0x1F
BNE             loc_100DF6
LSLS            R0, R4, #0x19
BPL             loc_100DD8
LSLS            R0, R4, #0x15
LDR             R0, [SP,#0x30+var_2C]
BPL             loc_100DBC
NEGS            R0, R0
LDR             R1, [R5]
ADDS            R2, R1, #4
STR             R2, [R5]
LDR             R1, [R1]
LSLS            R2, R4, #0x14
BPL             loc_100DCC
STRB            R0, [R1]
B               loc_100DF6
LSLS            R2, R4, #0x1C
BPL             loc_100DD4
STRH            R0, [R1]
B               loc_100DF6
STR             R0, [R1]
B               loc_100DF6
LDR             R0, [R5]
ADDS            R1, R0, #4
STR             R1, [R5]
LDR             R0, [R0]
LSLS            R1, R4, #0x14
BPL             loc_100DEA
LDR             R1, [SP,#0x30+var_2C]
STRB            R1, [R0]
B               loc_100DF6
LSLS            R1, R4, #0x1C
LDR             R1, [SP,#0x30+var_2C]
BPL             loc_100DF4
STRH            R1, [R0]
B               loc_100DF6
STR             R1, [R0]
MOVS            R0, R7
B               loc_100CF8
