PUSH            {R3-R7,LR}
MOVS            R4, R2
MOVS            R6, R1
MOVS            R5, R3
BL              sub_3018DC
LDR             R1, [R0,#4]
CMP             R1, R6
BLE             loc_102EA8
LDR             R0, [R0]
LSLS            R1, R6, #3
ADDS            R0, R0, R1
LDR             R0, [R0]
ADDS            R1, R0, #1
BEQ             loc_102EA8
MOVS            R1, #0
STR             R1, [SP,#0x18+var_18]
MOVS            R2, R5
MOVS            R1, R4
MOV             R3, SP
BL              sub_10279C
MOV             R1, SP
CMP             R0, R1
BNE             locret_102EAA
MOVS            R0, #0
POP             {R3-R7,PC}
