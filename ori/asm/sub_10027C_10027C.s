PUSH            {R0-R2,R4-R7,LR}
ADDS            R2, R2, #7
MOVS            R6, #0
LSRS            R2, R2, #3
ADR             R5, dword_1002DC
LSLS            R2, R2, #3
CMP             R1, #0xF5
LDM             R2, {R0,R2}
BEQ             loc_1002B2
CMP             R2, #0
BGE             loc_10029E
MOVS            R1, #0
NEGS            R0, R0
SBCS            R1, R2
MOVS            R2, R1
ADR             R5, dword_1002E0
B               loc_1002B0
LDR             R1, [SP,#0x20+var_20]
LDR             R1, [R1]
LSLS            R3, R1, #0x1E
BPL             loc_1002AA
ADR             R5, dword_1002E4
B               loc_1002B0
LSLS            R1, R1, #0x1D
BPL             loc_1002B2
ADR             R5, dword_1002E8
MOVS            R6, #1
LDR             R7, [SP,#0x20+var_20]
MOVS            R1, R2
MOVS            R4, #0
ADDS            R7, #0x24 ; '$'
B               loc_1002C6
BLX             sub_2FE310
ADDS            R2, #0x30 ; '0'
STRB            R2, [R7,R4]
ADDS            R4, R4, #1
MOVS            R2, R0
ORRS            R2, R1
BNE             loc_1002BC
LDR             R0, [SP,#0x20+var_20]
MOVS            R3, R6
MOVS            R2, R5
MOVS            R1, R4
BL              sub_2FDF60
POP             {R1-R7,PC}
