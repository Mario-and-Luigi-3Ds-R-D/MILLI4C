PUSH            {R1-R7,LR}
MOVS            R5, R0
MOVS            R6, R1
MOVS            R7, R2
MOVS            R1, #2
MOVS            R0, #0
NOP
NOP
MOVS            R4, #0
STR             R0, [SP,#0x20+var_1C]
B               loc_100826
LDRB            R1, [R6]
MOV             R0, SP
LDR             R2, [SP,#0x20+var_1C]
ADDS            R6, R6, #1
BL              sub_2FE010
ADDS            R1, R0, #1
BEQ             locret_100830
ADDS            R0, R0, #2
BEQ             loc_100826
CMP             R5, #0
BEQ             loc_10081C
MOV             R0, SP
LDRH            R0, [R0,#0x20+var_20]
LSLS            R1, R4, #1
STRH            R0, [R5,R1]
MOV             R0, SP
ADDS            R4, R4, #1
LDRH            R0, [R0,#0x20+var_20]
CMP             R0, #0
BEQ             loc_100832
CMP             R5, #0
BEQ             loc_1007FC
CMP             R4, R7
BCC             loc_1007FC
MOVS            R0, R4
POP             {R1-R7,PC}
SUBS            R4, R4, #1
B               loc_10082E
