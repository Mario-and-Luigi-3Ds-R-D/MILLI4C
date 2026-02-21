PUSH            {R3-R7,LR}
MOVS            R6, R0
MOVS            R5, #0
STR             R1, [SP,#0x18+var_18]
B               loc_10098E
ADDS            R5, R5, #1
LSLS            R4, R5, #1
LDRH            R0, [R6,R4]
BL              sub_2FF4D4
MOVS            R7, R0
LDR             R0, [SP,#0x18+var_18]
LDRH            R0, [R0,R4]
BL              sub_2FF4D4
SUBS            R0, R7, R0
BNE             locret_1009AA
LDRH            R1, [R6,R4]
CMP             R1, #0
BNE             loc_10098C
POP             {R3-R7,PC}
