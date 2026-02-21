PUSH            {R4,R5,LR}
MOV             R5, R0
ADD             R4, R0, #8
SUB             SP, SP, #0x14
MOV             R0, R4
BL              sub_13273C
LDR             R2, [R5]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x20+var_18
ADD             R0, SP, #0x20+var_14
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, [R5]
SVC             0x19
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, =0x1319
MOV             R1, R0
LDRB            R0, [R0,R5]
ADD             R0, R0, #1
STRB            R0, [R1,R5]
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4,R5,LR}
B               sub_1327BC
