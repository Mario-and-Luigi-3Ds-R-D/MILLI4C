PUSH            {R4-R6,LR}
MOVS            R5, R0
MOVS            R4, R1
CMP             R2, #1
BEQ             loc_100232
LDR             R0, [R5]
LSLS            R0, R0, #0x1A
BPL             loc_10022E
LDR             R2, [R5,#0x1C]
MOVS            R3, #0
B               loc_100238
MOVS            R3, #1
B               loc_100244
ADDS            R3, R3, #1
CMP             R3, R2
BCS             loc_100244
LSLS            R0, R3, #1
LDRH            R0, [R4,R0]
CMP             R0, #0
BNE             loc_100236
LDR             R0, [R5,#0x18]
SUBS            R0, R0, R3
STR             R0, [R5,#0x18]
LDR             R0, [R5,#0x20]
ADDS            R0, R0, R3
STR             R0, [R5,#0x20]
LSLS            R0, R3, #1
ADDS            R6, R0, R4
MOVS            R0, R5
BL              sub_2FE050
B               loc_100266
LDR             R2, [R5,#4]
LDRH            R0, [R4]
LDR             R1, [R5,#8]
ADDS            R4, R4, #2
BLX             R2
CMP             R4, R6
BCC             loc_10025C
MOVS            R0, R5
BL              sub_2FE07C
POP             {R4-R6,PC}
