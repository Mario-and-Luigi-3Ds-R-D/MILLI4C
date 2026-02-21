PUSH            {R0-R2,R4-R7,LR}
MOVS            R6, #0
CMP             R1, #0x75 ; 'u'
LDR             R0, [R2]
LDR             R1, [SP,#0x20+var_20]
ADR             R5, dword_10010C
BEQ             loc_1000E2
BL              sub_2FDF08
CMP             R0, #0
BGE             loc_1000CC
NEGS            R0, R0
ADR             R5, dword_100110
B               loc_1000DE
LDR             R1, [SP,#0x20+var_20]
LDR             R1, [R1]
LSLS            R2, R1, #0x1E
BPL             loc_1000D8
ADR             R5, dword_100114
B               loc_1000DE
LSLS            R1, R1, #0x1D
BPL             loc_1000E6
ADR             R5, dword_100118
MOVS            R6, #1
B               loc_1000E6
BL              sub_2FDF1E
LDR             R7, [SP,#0x20+var_20]
MOVS            R4, #0
ADDS            R7, #0x24 ; '$'
B               loc_1000F8
BLX             sub_2FDF34
ADDS            R1, #0x30 ; '0'
STRB            R1, [R7,R4]
ADDS            R4, R4, #1
CMP             R0, #0
BNE             loc_1000EE
LDR             R0, [SP,#0x20+var_20]
MOVS            R3, R6
MOVS            R2, R5
MOVS            R1, R4
BL              sub_2FDF60
POP             {R1-R7,PC}
