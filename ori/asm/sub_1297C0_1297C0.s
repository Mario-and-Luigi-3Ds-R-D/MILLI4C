PUSH            {R4-R7,LR}
ADD             R6, R0, #8
MOV             R7, R0
SUB             SP, SP, #0x14
MOV             R4, R2
MOV             R5, R3
MOV             R0, R6
BL              sub_13273C
LDR             R0, [R7]
MOV             R3, #0
MOV             R2, #1
STR             R0, [SP,#0x28+var_20]
ADD             R1, SP, #0x28+var_20
ADD             R0, SP, #0x28+var_1C
STRD            R4, R5, [SP,#0x28+var_28]
BL              sub_120250
MOVS            R1, R0,LSR#31
MOV             R4, R0
BLNE            sub_12107C
LDR             R0, =0xFF800000
CMP             R0, R4,LSL#22
MOVNE           R4, #1
MOVEQ           R4, #0
BEQ             loc_129844
LDR             R0, [R7]
SVC             0x19
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, =0x1319
MOV             R1, R0
LDRB            R0, [R0,R7]
ADD             R0, R0, #1
STRB            R0, [R1,R7]
MOV             R0, R6
BL              sub_1327BC
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R7,PC}
