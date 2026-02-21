PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R6, R0
MOVS            R5, R3
LDR             R0, [R0]
LDR             R1, [R0,#0x14]
TST             R1, R5
BEQ             loc_102F84
MOVS            R4, #0
B               loc_102F92
LDR             R1, [R0,#0x10]
LDR             R0, =dword_6E12B8
TST             R1, R5
BEQ             loc_102F90
LDR             R4, [R0,#(off_6E12C4 - 0x6E12B8)]
B               loc_102F92
LDR             R4, [R0,#(off_6E12C0 - 0x6E12B8)]
CMP             R4, #0
BEQ             loc_102FBC
LDR             R0, [SP,#0x28+var_20]
LDR             R7, [R0]
LDR             R0, [R4,#0xC]
CMP             R0, R7
BHI             loc_102FB0
MOVS            R0, #0
STR             R0, [SP,#0x28+var_28]
MOVS            R0, R4
ADDS            R1, R7, #1
ADDS            R0, #8
MOV             R2, SP
BL              sub_3019A6
LDR             R0, [R4,#8]
LSLS            R1, R7, #2
ADDS            R0, R0, R1
LDR             R7, [R0]
CMP             R7, #0
BNE             loc_10305E
LDR             R0, [SP,#0x28+var_1C]
CMP             R0, #0
BNE             loc_102FC8
MOVS            R0, #4
BL              sub_301510
CMP             R4, #0
BEQ             loc_102FF2
LDR             R0, [SP,#0x28+var_20]
LDR             R7, [R0]
LDR             R0, [R4,#0xC]
CMP             R0, R7
BHI             loc_102FE6
MOVS            R0, #0
STR             R0, [SP,#0x28+var_28]
MOVS            R0, R4
ADDS            R1, R7, #1
ADDS            R0, #8
MOV             R2, SP
BL              sub_3019A6
LDR             R0, [R4,#8]
LSLS            R1, R7, #2
ADDS            R0, R0, R1
LDR             R7, [R0]
CMP             R7, #0
BNE             loc_10305E
LDR             R2, [R6]
MOVS            R3, #0
LDR             R0, [R2,#0x14]
ADR             R1, dword_103074
TST             R0, R5
BEQ             loc_103020
MOVS            R3, #2
MOVS            R1, #0x10
MOVS            R0, #0
MOVS            R7, R5
TST             R7, R1
BEQ             loc_103014
LDR             R1, [R2]
LSLS            R0, R0, #2
ADDS            R0, R1, R0
LDR             R1, [R0]
B               loc_103028
ADDS            R0, R0, #1
LSLS            R1, R1, #1
CMP             R0, #6
BCC             loc_103004
ADR             R1, dword_103074
B               loc_103028
LDR             R0, [R2,#0x10]
TST             R0, R5
BEQ             loc_103028
MOVS            R3, #1
MOVS            R2, #0
MOVS            R0, R3
LDR             R3, [SP,#0x28+arg_0]
BLX             R3
MOVS            R7, R0
CMP             R4, #0
BEQ             loc_10305E
LDR             R0, [R6]
CMP             R0, R4
BEQ             loc_10305E
MOVS            R1, R4
MOV             R0, SP
BL              sub_3019F0
LDR             R2, [SP,#0x28+var_20]
MOVS            R1, R7
MOV             R0, SP
BL              sub_301A14
MOVS            R0, #0
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x1C]
SUBS            R0, R0, #1
STR             R0, [R4,#0x1C]
MOV             R0, SP
BL              sub_301A94
LDR             R2, [SP,#0x28+var_20]
MOVS            R1, R7
MOVS            R0, R6
BL              sub_301A14
MOVS            R0, R7
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
