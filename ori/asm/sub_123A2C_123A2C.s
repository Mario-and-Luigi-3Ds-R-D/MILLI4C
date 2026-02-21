PUSH            {R4-R10,LR}
SUB             SP, SP, #0x20
MOV             R4, R1
MOV             R9, R0
ADD             R0, SP, #0x40+arg_0
MOV             R6, R2
LDM             R0, {R7,R8}
MOV             R5, R3
BL              sub_1233A8
CMP             R9, #0
ADDEQ           R9, SP, #0x40+var_30
CMP             R4, #0
ADDEQ           R4, SP, #0x40+var_2C
MOV             R10, R4
MOVS            R4, R6
CMPNE           R5, #0
ADDEQ           R4, SP, #0x40+var_28
MOVEQ           R5, #0
CMP             R7, #0
ADDEQ           R7, SP, #0x40+var_24
CMP             R8, #0
MOV             R0, #0
ADDEQ           R8, SP, #0x40+var_34
STR             R0, [SP,#0x40+var_34]
BL              sub_123148
MOV             R1, R0
MOV             R3, R4
MOV             R2, R10
MOV             R0, R9
STMEA           SP, {R5,R7,R8}
BL              sub_12A434
MOV             R4, R0
LDR             R0, [SP,#0x40+var_34]
CMP             R0, #0
SVCNE           0x23 ; '#'
BL              sub_123520
ADD             SP, SP, #0x20 ; ' '
MOV             R0, R4
POP             {R4-R10,PC}
