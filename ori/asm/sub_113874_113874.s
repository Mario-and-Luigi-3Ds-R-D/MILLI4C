PUSH            {R4-R8,LR}
MOV             R5, R2
MOV             R7, R0
MOV             R0, R1
MOV             R1, R2
LDR             R2, [R0]
MOV             R6, R3
LDR             R8, =sub_116DBC
SUB             SP, SP, #0x28
LDR             R3, [R2,#0xC]
ADD             R4, R7, #0xC
MOV             R2, #0
BLX             R3
STR             R0, [R4,#0xC]
ADD             R0, R0, R5
MOV             R2, #4
STR             R0, [R4,#0x10]
STR             R2, [SP,#0x40+var_30]
LDR             R2, =sub_12014C
ADD             R5, SP, #0x40+var_24
ADD             R0, R4, #4
STR             R2, [SP,#0x40+var_2C]
LDR             R2, =nullsub_368
MOV             R1, #0xFFFFFFFE
MOV             R12, #0
STR             R2, [SP,#0x40+var_28]
LDR             R2, =sub_12016C
ADD             R3, SP, #0x40+var_20
STM             R5, {R2,R7}
LDR             R2, [R4,#0x10]
ADD             R4, SP, #0x40+var_38
STMEA           SP, {R2,R6}
STM             R4, {R1,R12}
MOV             R2, R8
ADD             R1, SP, #0x40+var_30
BL              sub_118C00
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
ADD             SP, SP, #0x28 ; '('
POP             {R4-R8,PC}
