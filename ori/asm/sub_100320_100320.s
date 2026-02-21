PUSH            {R4-R6,LR}
MOVS            R1, #0
MOVS            R4, R0
ADDS            R4, #0x24 ; '$'
B               loc_10033C
LSLS            R5, R2, #0x1D
LSRS            R2, R2, #3
LSRS            R5, R5, #0x1D
ADDS            R5, #0x30 ; '0'
STRB            R5, [R4,R1]
LSLS            R5, R3, #0x1D
ADDS            R1, R1, #1
ORRS            R2, R5
LSRS            R3, R3, #3
MOVS            R5, R2
ORRS            R5, R3
BNE             loc_10032A
LDR             R4, [R0]
MOVS            R3, #0
ADR             R2, dword_100388
LSLS            R5, R4, #0x1C
BPL             loc_10035E
MOVS            R5, #0x20 ; ' '
ANDS            R4, R5
ORRS            R4, R1
BEQ             loc_10035E
LDR             R4, [R0,#0x1C]
MOVS            R3, #1
ADR             R2, dword_10038C
SUBS            R4, R4, #1
STR             R4, [R0,#0x1C]
BL              sub_2FDF60
POP             {R4-R6,PC}
