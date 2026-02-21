PUSH            {R4-R6,LR}
MOVS            R5, R0
MOVS            R4, R1
CMP             R2, #1
BEQ             loc_1006D2
LDR             R0, [R5]
LSLS            R0, R0, #0x1A
BPL             loc_1006CE
LDR             R2, [R5,#0x1C]
MOVS            R3, #0
B               loc_1006D8
MOVS            R3, #1
B               loc_1006E2
ADDS            R3, R3, #1
CMP             R3, R2
BCS             loc_1006E2
LDRB            R0, [R4,R3]
CMP             R0, #0
BNE             loc_1006D6
LDR             R0, [R5,#0x18]
ADDS            R6, R4, R3
SUBS            R0, R0, R3
STR             R0, [R5,#0x18]
LDR             R0, [R5,#0x20]
ADDS            R0, R0, R3
STR             R0, [R5,#0x20]
MOVS            R0, R5
BL              sub_2FE050
B               loc_100702
LDR             R2, [R5,#4]
LDRB            R0, [R4]
LDR             R1, [R5,#8]
ADDS            R4, R4, #1
BLX             R2
CMP             R4, R6
BCC             loc_1006F8
MOVS            R0, R5
BL              sub_2FE07C
POP             {R4-R6,PC}
