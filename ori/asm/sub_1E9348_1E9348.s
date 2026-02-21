PUSH            {R3-R7,LR}
MOV             R5, R0
MOV             R4, R1
LDR             R0, [R1,#0x3C]
MOV             R12, R2
MOV             R2, R3
CMP             R0, #0
MOVNE           R4, R0
MOV             R0, #0
LDR             R1, [R4,#0x38]
LDR             R3, [SP,#0x18+arg_0]
LDR             R6, [R1,#0x20]!
CMP             R6, #0
ADDNE           R1, R1, R6
MOVEQ           R1, R0
CMP             R1, #0
MOVEQ           R0, #0
BEQ             loc_1E93A0
ADD             R1, R1, R12,LSL#4
LDR             R12, [R1,#0x28]!
CMP             R12, #0
ADDNE           R0, R12, R1
STR             R0, [SP,#0x18+var_18]
LDR             R0, [R5]
MOV             R1, SP
LDR             R12, [R0,#0x28]
MOV             R0, R5
BLX             R12
STR             R4, [R5,#0x16C]
POP             {R3-R7,PC}
