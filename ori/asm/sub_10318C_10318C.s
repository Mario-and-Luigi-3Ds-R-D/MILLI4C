PUSH            {R1-R7,LR}
MOVS            R5, R2
MOVS            R6, R0
MOVS            R4, R1
MOVS            R0, R1
BL              sub_1030C0
MOVS            R1, R0
MOVS            R3, R5
MOVS            R2, #0
MOVS            R0, R6
BL              sub_301BA4
LDR             R1, =off_6C3C30
STR             R1, [R0]
MOVS            R6, R0
LDR             R0, [R0,#0x14]
LDR             R1, =unk_69B410
CMP             R0, R1
BEQ             loc_1032AA
MOVS            R0, #1
STRB            R0, [R6,#0x18]
MOVS            R2, #2
MOVS            R1, R4
MOV             R0, SP
BL              sub_301784
MOVS            R4, #0
MOVS            R5, #0xFF
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_1031EA
B               loc_1031F0
LSLS            R2, R5, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_1031F6
SUBS            R5, R5, #1
CMP             R5, R4
BHI             loc_1031D8
B               loc_1031F6
ADDS            R4, R4, #1
CMP             R4, R5
BCC             loc_1031C6
STR             R5, [R6,#0x20]
STR             R4, [R6,#0x1C]
LDR             R7, [R6,#0x2C]
B               loc_103238
MOVS            R0, R4
SUBS            R0, #0x61 ; 'a'
CMP             R0, #0x19
BHI             loc_103230
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_103230
MOVS            R0, R4
SUBS            R0, #0x20 ; ' '
LSLS            R2, R0, #0x18
STR             R0, [SP,#0x20+var_18]
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_103230
LDR             R0, [SP,#0x20+var_18]
B               loc_103232
MOVS            R0, R4
STRB            R0, [R7]
ADDS            R7, R7, #1
ADDS            R4, R4, #1
CMP             R4, R5
BLS             loc_1031FE
MOVS            R4, #0
MOVS            R5, #0xFF
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_103264
B               loc_10326A
LSLS            R2, R5, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_103270
SUBS            R5, R5, #1
CMP             R5, R4
BHI             loc_103252
B               loc_103270
ADDS            R4, R4, #1
CMP             R4, R5
BCC             loc_103240
STR             R5, [R6,#0x28]
STR             R4, [R6,#0x24]
LDR             R7, [R6,#0x30]
B               loc_1032B4
MOVS            R0, R4
SUBS            R0, #0x41 ; 'A'
CMP             R0, #0x19
BHI             loc_1032AC
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_1032AC
MOVS            R0, R4
ADDS            R0, #0x20 ; ' '
LSLS            R2, R0, #0x18
STR             R0, [SP,#0x20+var_18]
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_1032AC
LDR             R0, [SP,#0x20+var_18]
B               loc_1032AE
B               loc_1032BE
MOVS            R0, R4
STRB            R0, [R7]
ADDS            R7, R7, #1
ADDS            R4, R4, #1
CMP             R4, R5
BLS             loc_103278
MOV             R0, SP
BL              sub_3017BC
MOVS            R0, R6
POP             {R1-R7,PC}
