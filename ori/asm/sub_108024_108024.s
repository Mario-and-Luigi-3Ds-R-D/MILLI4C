PUSH            {R4,LR}
BL              sub_119B9C
POP             {R4,LR}
NOP
PUSH            {R4-R6,LR}
SUB             SP, SP, #0x30 ; '0'
MOV             R5, #0
LDR             R4, =dword_6D4B8C
MOV             R0, SP
STR             R5, [SP,#0x40+var_40]
BL              sub_10EE98
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R1, [SP,#0x40+var_40]
STRGE           R1, [R4]
MOV             R4, R0
ANDS            R0, R0, #0x80000000
BMI             loc_1080C8
LDR             R6, =sub_10ECF4
LDR             R3, =flt_70E870
LDR             R12, =0x5109D500
STR             R6, [SP,#0x40+var_24]
MOV             R6, #4
STR             R6, [SP,#0x40+var_20]
LDR             R6, =sub_11690C
MOV             R1, #0xFFFFFFFE
LDR             R0, =dword_6D4B94
STR             R6, [SP,#0x40+var_1C]
LDR             R6, =nullsub_367
LDR             R2, =sub_10DD60
STR             R6, [SP,#0x40+var_18]
LDR             R6, =sub_11691C
STR             R6, [SP,#0x40+var_14]
STMEA           SP, {R3,R12}
ADD             R12, SP, #0x40+var_38
ADD             R3, SP, #0x40+var_24
STM             R12, {R1,R5}
ADD             R1, SP, #0x40+var_20
BL              sub_118C00
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
ADD             SP, SP, #0x30 ; '0'
MOV             R0, R4
POP             {R4-R6,PC}
