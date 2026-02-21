PUSH            {R4-R10,LR}
SUB             SP, SP, #0x18
MOV             R4, #0
MOV             R10, R0
MOV             R8, R1
MOV             R9, R2
MOV             R5, R3
LDRD            R6, R7, [SP,#0x38+arg_0]
STR             R4, [SP,#0x38+var_30]
STR             R4, [SP,#0x38+var_2C]
BL              sub_1233A8
CMP             R5, #0
ADD             R0, SP, #0x38+var_28
BEQ             loc_123348
CMP             R6, #0
MOVNE           R1, R6
MOVEQ           R1, #1
MOVNE           R3, R5
STR             R0, [SP,#0x38+var_34]
STR             R1, [SP,#0x38+var_38]
BNE             loc_1232E4
ADD             R3, SP, #0x38+var_2C
CMP             R8, #0
MOVEQ           R2, #1
BEQ             loc_123304
CMP             R9, #0
MOVEQ           R9, #1
MOV             R2, R9
MOVNE           R1, R8
BNE             loc_123308
ADD             R1, SP, #0x38+var_30
MOV             R0, R10
BL              sub_12A304
MOV             R8, R0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
CMP             R5, #0
CMPNE           R6, #0
STREQ           R4, [SP,#0x38+var_28]
CMP             R7, #0
LDRNE           R0, [SP,#0x38+var_28]
STRNE           R0, [R7]
BL              sub_123520
ADD             SP, SP, #0x18
MOV             R0, R8
POP             {R4-R10,PC}
MOV             R1, #1
STR             R0, [SP,#0x38+var_34]
STR             R1, [SP,#0x38+var_38]
B               loc_1232E0
