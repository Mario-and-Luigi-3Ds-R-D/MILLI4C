ADR             R12, (loc_10049E+1)
BX              R12 ; loc_10049E
PUSH            {R4,LR}
LDR             R3, [R0,#0x14]
CMP             R3, #0
BEQ             loc_100496
BL              sub_10014C
B               loc_10049A
BL              sub_1006BC
MOVS            R0, #1
POP             {R4,PC}
LDR             R2, [R2]
MOVS            R1, R0
ADDS            R1, #0x24 ; '$'
STRB            R2, [R1]
MOVS            R2, #0
STRB            R2, [R1,#1]
MOVS            R2, #1
B               loc_100488
