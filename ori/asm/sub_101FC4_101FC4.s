PUSH            {R3-R7,LR}
MOVS            R5, R0
LDR             R0, [R1,#0xC]
MOVS            R4, R1
MOVS            R1, #0x280000
BICS            R0, R1
MOVS            R1, #0x400000
ORRS            R0, R1
STR             R0, [R4,#0xC]
LSLS            R0, R0, #0x1A
BPL             loc_101FE4
MOVS            R0, R4
BL              sub_300A84
LDR             R1, =0x1082
LDR             R0, [R4,#0xC]
ANDS            R1, R0
CMP             R1, #2
BEQ             loc_101FF6
MOVS            R0, R4
BL              sub_3009D8
B               loc_102176
MOVS            R1, #5
MOVS            R2, #1
LSLS            R1, R1, #0xD
ANDS            R1, R0
LSLS            R2, R2, #0xF
CMP             R1, R2
BNE             loc_102024
LSLS            R0, R0, #0xF
BPL             loc_102016
LDR             R1, [R4,#4]
LDR             R0, [R4,#0x2C]
CMP             R0, R1
BHI             loc_102012
MOVS            R0, R1
STR             R0, [R4,#4]
B               loc_102024
LDR             R0, [R4,#0x10]
STR             R0, [R4,#0x2C]
STR             R0, [R4,#4]
LDR             R0, [R4,#0x14]
BLX             sub_300AC8
STR             R0, [R4,#0x18]
LDR             R1, [R4,#8]
LSLS            R6, R5, #0x18
MOVS            R2, #0
LSRS            R6, R6, #0x18
CMP             R1, #0
BGE             loc_10204E
LDR             R0, [R4,#0xC]
LSLS            R3, R0, #0x16
BMI             loc_10204E
MVNS            R1, R1
STR             R1, [R4,#8]
MOVS            R1, #9
STR             R2, [R4]
LSLS            R1, R1, #0xD
ORRS            R0, R1
STR             R0, [R4,#0xC]
LDR             R0, [R4,#4]
ADDS            R1, R0, #1
STR             R1, [R4,#4]
STRB            R6, [R0]
B               loc_1021AC
LDR             R0, [R4,#0xC]
MOVS            R1, #0x2000
ORRS            R0, R1
STR             R0, [R4,#0xC]
MOVS            R0, #0
STR             R0, [R4]
LDR             R0, [R4,#0x10]
CMP             R0, #0
BNE             loc_1020CA
LDR             R0, [R4,#0x14]
BLX             sub_300AD0
MOVS            R5, R4
ADDS            R5, #0x24 ; '$'
MOVS            R7, #1
CMP             R0, #0
BEQ             loc_1020A2
LDR             R0, [R4,#0xC]
LSLS            R0, R0, #0x16
LSRS            R0, R0, #0x1E
BEQ             loc_102090
LDR             R0, [R4,#0x1C]
BLX             sub_2FEF68
CMP             R0, #0
STR             R0, [R4,#0x10]
BEQ             loc_102090
LDR             R1, [R4,#0xC]
LSLS            R0, R7, #0xB
ORRS            R1, R0
STR             R1, [R4,#0xC]
B               loc_1020C6
STR             R7, [R4,#0x1C]
STR             R5, [R4,#0x10]
LDR             R0, [R4,#0xC]
MOVS            R1, #0x300
BICS            R0, R1
MOVS            R1, #0x400
B               loc_1020C2
LDR             R0, [R4,#0x1C]
BLX             sub_2FEF68
CMP             R0, #0
STR             R0, [R4,#0x10]
BEQ             loc_102090
LDR             R0, [R4,#0xC]
MOVS            R1, #0x800
ORRS            R0, R1
STR             R0, [R4,#0xC]
LSLS            R1, R0, #0x16
LSRS            R1, R1, #0x1E
BNE             loc_1020C6
MOVS            R1, #0x100
ORRS            R0, R1
STR             R0, [R4,#0xC]
LDR             R0, [R4,#0x10]
STR             R0, [R4,#4]
LDR             R2, [R4,#0xC]
LDR             R7, =0x10000
LDR             R5, [R4,#0x10]
LSLS            R0, R2, #0x17
BPL             loc_102114
LDR             R1, [R4,#4]
LDR             R0, [R4,#0x2C]
CMP             R0, R1
BHI             loc_1020DE
MOVS            R0, R1
SUBS            R1, R0, R5
BEQ             loc_1020EE
MOVS            R2, R4
MOVS            R0, R5
BL              sub_3009EC
CMP             R0, #0
BNE             loc_102176
LDR             R0, [R4,#0xC]
LSLS            R1, R0, #8
BPL             loc_1020FE
STR             R5, [R4,#0x2C]
MOVS            R0, #0
STR             R5, [R4,#4]
STR             R0, [R4,#8]
B               loc_1021A6
ADDS            R1, R5, #1
STR             R1, [R4,#0x2C]
STR             R1, [R4,#4]
LDR             R1, [R4,#0x1C]
ORRS            R0, R7
SUBS            R1, R1, #1
STR             R1, [R4,#8]
STR             R0, [R4,#0xC]
MOVS            R0, R6
STRB            R6, [R5]
POP             {R3-R7,PC}
LSLS            R0, R2, #8
BPL             loc_10211C
ANDS            R2, R7
B               loc_102130
LDR             R0, [R4,#4]
ADDS            R1, R0, #1
STR             R1, [R4,#4]
STRB            R6, [R0]
LDR             R0, [R4,#0xC]
ORRS            R0, R7
CMP             R6, #0xA
STR             R0, [R4,#0xC]
BEQ             loc_10213C
MOVS            R2, #0
LDR             R1, [R4,#0x2C]
LDR             R0, [R4,#4]
CMP             R1, R0
BLS             loc_102140
MOVS            R3, R1
B               loc_102142
MOVS            R2, #1
B               loc_102130
MOVS            R3, R0
LDR             R7, [R4,#0xC]
SUBS            R3, R3, R5
LSLS            R7, R7, #0x15
BMI             loc_102154
LDR             R7, [R4,#0x1C]
CMP             R7, R3
BLE             loc_102154
CMP             R2, #0
BEQ             loc_102192
CMP             R1, R0
BHI             loc_10215A
MOVS            R1, R0
SUBS            R7, R1, R0
MOVS            R0, #0
STR             R5, [R4,#0x2C]
STR             R5, [R4,#4]
CMP             R3, #0
STR             R0, [R4,#8]
BLE             loc_10217C
MOVS            R2, R4
MOVS            R1, R3
MOVS            R0, R5
BL              sub_3009EC
CMP             R0, #0
BEQ             loc_10217C
MOVS            R0, #0
MVNS            R0, R0
POP             {R3-R7,PC}
CMP             R7, #0
BEQ             loc_102192
LDR             R0, [R4,#0x18]
STR             R5, [R4,#0x2C]
STR             R5, [R4,#4]
SUBS            R0, R0, R7
STR             R0, [R4,#0x18]
LDR             R0, [R4,#0xC]
MOVS            R1, #0x10
ORRS            R0, R1
STR             R0, [R4,#0xC]
LDR             R0, [R4,#0xC]
LSLS            R0, R0, #8
BPL             loc_1021AC
LDR             R1, [R4,#4]
LDR             R0, [R4,#0x18]
STR             R5, [R4,#0x2C]
SUBS            R1, R1, R5
ADDS            R0, R0, R1
STR             R5, [R4,#4]
STR             R0, [R4,#0x18]
MOVS            R0, #1
MVNS            R0, R0
POP             {R3-R7,PC}
MOVS            R0, R6
POP             {R3-R7,PC}
