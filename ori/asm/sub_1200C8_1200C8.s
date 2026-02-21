PUSH            {R0-R5,LR}
SUB             SP, SP, #0x24
ADD             R3, R3, #0x1000
ADD             R5, SP, #0x40+arg_0
LDR             R2, =sub_1272D4
LDM             R5, {R4,R12}
MOV             R5, #4
STR             R5, [SP,#0x40+var_30]
LDR             R5, =sub_1272C4
STR             R2, [SP,#0x40+var_24]
MOV             R2, R1
STR             R5, [SP,#0x40+var_2C]
LDR             R5, =nullsub_370
ADD             R1, SP, #0x40+var_30
STR             R5, [SP,#0x40+var_28]
MOV             R5, #0
STR             R5, [SP,#0x40+var_34]
STMEA           SP, {R3,R4,R12}
ADD             R3, SP, #0x40+var_14
BL              sub_118C00
MOV             R4, R0
AND             R0, R0, #0x7E00000
CMP             R0, #0x600000
BEQ             loc_120134
MOVS            R1, R4,LSR#31
MOV             R0, R4
BLNE            sub_12107C
ADD             SP, SP, #0x34 ; '4'
MOV             R0, R4
POP             {R4,R5,PC}
