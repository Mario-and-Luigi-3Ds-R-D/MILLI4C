ADD             R1, R1, R2
PUSH            {R4,R5,LR}
SUB             SP, SP, #0x24
MOV             R2, #4
STR             R1, [R0,#0x1C]
STR             R2, [SP,#0x30+var_20]
LDR             R2, =sub_12014C
ADD             R4, R0, #0xC
STR             R0, [SP,#0x30+var_10]
STR             R2, [SP,#0x30+var_1C]
LDR             R2, =nullsub_368
LDR             R12, =sub_116DBC
MOV             R1, #0xFFFFFFFE
STR             R2, [SP,#0x30+var_18]
LDR             R2, =sub_12016C
MOV             R5, #0
ADD             R0, R0, #0x10
STR             R2, [SP,#0x30+var_14]
LDR             R2, [R4,#0x10]
ADD             R4, SP, #0x30+var_28
STRD            R2, R3, [SP,#0x30+var_30]
STM             R4, {R1,R5}
ADD             R3, SP, #0x30+var_10
MOV             R2, R12
ADD             R1, SP, #0x30+var_20
BL              sub_118C00
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
ADD             SP, SP, #0x24 ; '$'
POP             {R4,R5,PC}
