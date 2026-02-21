LDR             R2, =dword_700750
PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R12, #0
LDR             R5, =dword_6D2418
LDR             R4, [R2,#(off_7007EC - 0x700750)]
LDR             R2, [R5]
LDR             R3, [R4,#4]
SUB             R3, R2, R3
TST             R3, #8
ADDNE           R2, R3, #0x18
STR             R3, [R4,#0xC]
STRNE           R2, [R4,#0xC]
BNE             loc_140B88
ADD             R3, R3, #0x20 ; ' '
STR             R3, [R4,#0xC]
LDR             R3, =dword_6D241C
LDR             R3, [R3]
CMP             R2, R3
BCS             loc_140B88
LDR             R6, =0x8025E
ADD             R7, R2, #8
STR             R6, [R2,#4]
STR             R12, [R2]
STR             R7, [R5]
MOV             R1, R1,ASR#3
STMEA           SP, {R1,R12}
BL              sub_13BC34
MOV             R0, R0,LSR#3
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R4,#4]
LDR             R1, [R4,#0xC]
ADD             R0, R0, R1
BL              sub_13BC34
MOV             R0, R0,LSR#3
MOV             R1, #1
STRD            R0, R1, [SP,#0x28+var_1C]
LDR             R0, [R4,#0x30]
CMP             R0, #0
BNE             loc_140BD4
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#0x14]
SUB             R0, R0, R1
STR             R0, [R4,#0x30]
LDR             R0, [R4,#0x34]
CMP             R0, #0
BEQ             loc_140BF0
LDR             R1, [R5]
SUB             R1, R1, R0
MOV             R1, R1,LSR#3
STR             R1, [R0,#8]
LDR             R0, [R5]
MOV             R2, SP
MOV             R1, #5
STR             R0, [R4,#0x34]
MOV             R0, #0x238
BL              sub_1406F0
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
