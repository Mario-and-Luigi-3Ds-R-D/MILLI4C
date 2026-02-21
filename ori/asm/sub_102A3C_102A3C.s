PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R5, R1
MOVS            R7, R0
LDR             R1, [R1,#4]
MOVS            R6, R2
CMP             R1, #0
BEQ             loc_102A58
LDR             R3, =(sub_3015EC+1)
LDR             R2, =(sub_102786+1)
MOVS            R0, #4
BL              sub_301670
B               loc_102A5A
MOVS            R0, #0
STR             R0, [R7]
LDR             R4, [R5,#4]
STR             R4, [R7,#4]
B               loc_102A70
LDR             R1, [R5]
LDR             R2, [R7]
LSLS            R0, R4, #2
ADDS            R1, R1, R0
ADDS            R0, R2, R0
BL              sub_301684
SUBS            R4, R4, #1
BCS             loc_102A62
LDR             R0, [R5,#0xC]
MOVS            R4, R7
ADDS            R4, #8
CMP             R0, #0
BEQ             loc_102A84
LSLS            R0, R0, #2
BL              sub_301570
STR             R0, [R4]
LDR             R0, [R5,#0xC]
STR             R0, [R4,#4]
B               loc_102A96
LDR             R2, [R5,#8]
LDR             R3, [R4]
LSLS            R1, R0, #2
LDR             R2, [R2,R1]
STR             R2, [R3,R1]
SUBS            R0, R0, #1
BCS             loc_102A8C
LDR             R0, [R5,#0x10]
SUBS            R4, #8
STR             R0, [R4,#0x10]
LDR             R0, [R5,#0x14]
STR             R0, [R4,#0x14]
MOVS            R0, #0
STR             R0, [R4,#0x18]
LDR             R0, [SP,#0x28+var_18]
CMP             R6, #0
STR             R0, [R4,#0x1C]
BEQ             loc_102AC8
MOVS            R0, R6
BLX             sub_300168
ADDS            R0, R0, #1
MOVS            R5, R0
BL              sub_301570
MOVS            R2, R5
MOVS            R1, R6
BLX             sub_301664
STR             R0, [R4,#0x18]
LDR             R0, [R4,#0xC]
B               loc_102ADE
LDR             R1, [R4,#8]
LSLS            R2, R0, #2
ADDS            R1, R1, R2
LDR             R1, [R1]
CMP             R1, #0
BEQ             loc_102ADE
LDR             R2, [R1,#0xC]
ADDS            R2, R2, #1
STR             R2, [R1,#0xC]
SUBS            R0, R0, #1
BCS             loc_102ACC
MOVS            R0, R4
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
