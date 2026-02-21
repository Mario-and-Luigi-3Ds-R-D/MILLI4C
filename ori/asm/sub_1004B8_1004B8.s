ADR             R12, (loc_1004D6+1)
BX              R12 ; loc_1004D6
PUSH            {R4,LR}
LDR             R3, [R0,#0x14]
CMP             R3, #0
BEQ             loc_1004CE
BL              sub_10021C
B               loc_1004D2
BL              sub_100710
MOVS            R0, #1
POP             {R4,PC}
LDR             R2, [R2]
MOVS            R1, R0
ADDS            R1, #0x24 ; '$'
STRH            R2, [R0,#0x24]
MOVS            R2, #0
STRH            R2, [R0,#0x26]
MOVS            R2, #1
B               loc_1004C0
