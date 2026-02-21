PUSH            {R4-R10,LR}
SUB             SP, SP, #0x20
MOV             R6, R0
MOV             R7, R1
LDR             R0, [SP,#0x40+arg_8]
LDRD            R4, R5, [SP,#0x40+arg_0]
MOV             R8, R2
CMP             R0, #0
MOV             R10, R3
BEQ             loc_123194
BL              sub_12A2F8
CMP             R0, #0
LDREQ           R0, =0xC8A0CFEF
BEQ             loc_12327C
B               loc_12319C
NOP
BL              sub_129FC4
NOP
BL              sub_129DC4
CMP             R0, #0
MOV             R9, #0
BEQ             loc_1231F8
BL              sub_129DC4
STR             R0, [R7]
MOV             R0, #0
BL              sub_1230C8
NOP
NOP
BL              sub_129FB8
CMP             R6, #0
STRNE           R9, [R6]
CMP             R4, #0
STRNE           R9, [R4]
CMP             R5, #0
MOV             R7, #0
BEQ             loc_123270
LDR             R0, =unk_6D2448
LDR             R0, [R0,#(dword_6D2450 - 0x6D2448)]
STR             R0, [R5]
B               loc_123270
CMP             R6, #0
ADDEQ           R6, SP, #0x40+var_30
CMP             R7, #0
ADDEQ           R7, SP, #0x40+var_2C
CMP             R8, #0
MOVEQ           R10, #0
CMPNE           R10, #0
ADDEQ           R8, SP, #0x40+var_28
CMP             R4, #0
ADDEQ           R4, SP, #0x40+var_24
CMP             R5, #0
ADDEQ           R5, SP, #0x40+var_34
STR             R9, [SP,#0x40+var_34]
BL              sub_1233A8
NOP
NOP
BL              sub_123148
MOV             R1, R0
STR             R10, [SP,#0x40+var_40]
MOV             R3, R8
MOV             R2, R7
MOV             R0, R6
STRD            R4, R5, [SP,#0x40+var_3C]
BL              sub_12A4C0
MOV             R7, R0
NOP
BL              sub_123520
LDR             R0, [SP,#0x40+var_34]
CMP             R0, #0
SVCNE           0x23 ; '#'
NOP
BL              sub_129FB8
MOV             R0, R7
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R10,PC}
