PUSH            {R4,LR}
B               loc_100926
SUBS            R2, R2, #1
ADDS            R0, R0, #2
ADDS            R1, R1, #2
CMP             R2, #0
BEQ             loc_100940
LDRH            R3, [R0]
CMP             R3, #0
BEQ             loc_100936
LDRH            R4, [R1]
CMP             R3, R4
BEQ             loc_100920
LDRH            R1, [R1]
LSLS            R0, R3, #0x10
LSRS            R0, R0, #0x10
SUBS            R0, R0, R1
POP             {R4,PC}
MOVS            R0, #0
POP             {R4,PC}
