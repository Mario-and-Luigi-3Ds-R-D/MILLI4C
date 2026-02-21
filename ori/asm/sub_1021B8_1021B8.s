PUSH            {R3-R7,LR}
MOVS            R4, R0
LDR             R7, [R0,#0x14]
LDR             R0, [R0,#0xC]
MOVS            R5, R1
MOVS            R6, R2
LSLS            R0, R0, #0x1E
BEQ             loc_10222A
MOVS            R0, R7
BLX             sub_300AD0
CMP             R0, #0
BNE             loc_10222A
MOVS            R2, R6
MOVS            R6, #0x10
CMP             R2, #0
BEQ             loc_102226
CMP             R2, #1
BEQ             loc_1021E4
CMP             R2, #2
BNE             loc_10222A
B               loc_1021EE
MOVS            R0, R4
BL              sub_10272C
ADDS            R5, R0, R5
B               loc_102226
MOVS            R0, R7
BLX             sub_300AC8
LDR             R1, [R4,#0xC]
ORRS            R1, R6
CMP             R0, #0
STR             R1, [R4,#0xC]
BGE             loc_102208
MOVS            R0, R4
BL              sub_3009D8
MOVS            R0, #1
POP             {R3-R7,PC}
LSLS            R1, R1, #0xF
BPL             loc_102224
LDR             R2, [R4,#4]
LDR             R1, [R4,#0x2C]
CMP             R1, R2
BHI             loc_102216
MOVS            R1, R2
LDR             R2, [R4,#0x18]
ADDS            R1, R1, R2
LDR             R2, [R4,#0x10]
SUBS            R1, R1, R2
CMP             R1, R0
BLE             loc_102224
MOVS            R0, R1
ADDS            R5, R5, R0
CMP             R5, #0
BGE             loc_10222E
MOVS            R0, #2
POP             {R3-R7,PC}
LDR             R1, [R4,#0x2C]
LDR             R0, [R4,#4]
LDR             R2, [R4,#0xC]
CMP             R1, R0
BCS             loc_102246
LSLS            R1, R2, #0xE
STR             R0, [R4,#0x2C]
BPL             loc_102246
MOVS            R1, #0x20000
BICS            R2, R1
ORRS            R2, R6
LDR             R6, [R4,#0x18]
CMP             R6, R5
BGT             loc_102270
LDR             R1, [R4,#0x2C]
CMP             R1, R0
BLS             loc_102256
MOVS            R3, R1
B               loc_102258
MOVS            R3, R0
ADDS            R7, R3, R6
LDR             R3, [R4,#0x10]
SUBS            R7, R7, R3
CMP             R7, R5
BLE             loc_102270
CMP             R1, R0
BLS             loc_10226A
MOVS            R7, R1
B               loc_10226C
MOVS            R7, R0
CMP             R7, R3
BNE             loc_10227E
MOVS            R0, #0x20 ; ' '
ORRS            R2, R0
MOVS            R0, #0
STR             R0, [R4,#8]
STR             R5, [R4,#0x28]
STR             R0, [R4]
B               loc_10229A
SUBS            R5, R5, R6
LDR             R6, [R4,#0x1C]
SUBS            R6, R5, R6
CMP             R1, R0
STR             R6, [R4,#8]
BLS             loc_10228C
MOVS            R0, R1
SUBS            R0, R0, R3
SUBS            R0, R5, R0
STR             R0, [R4]
ADDS            R0, R3, R5
STR             R0, [R4,#4]
MOVS            R0, #0x20 ; ' '
BICS            R2, R0
LDR             R0, =0xFFD7CFBF
ANDS            R2, R0
MOVS            R0, #0
STR             R2, [R4,#0xC]
ADDS            R4, #0x40 ; '@'
STRB            R0, [R4,#4]
POP             {R3-R7,PC}
