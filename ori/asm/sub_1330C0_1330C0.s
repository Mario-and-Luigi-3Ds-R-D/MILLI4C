PUSH            {R4-R7,LR}
MOV             R6, R0
ADD             R4, R0, #0x44 ; 'D'
SUB             SP, SP, #0x14
MOV             R7, R1
MOV             R5, R2
MOV             R0, R4
BL              sub_13273C
ADD             R3, SP, #0x28+var_24
ADD             R0, R5, #0x280
ADD             R1, R5, #0x500
ADD             R2, R5, #0x780
STR             R5, [SP,#0x28+var_28]
STM             R3, {R0-R2}
ADD             R1, R6, R7,LSL#3
LDR             R0, [R1,#0x34]
CMP             R0, #0
BEQ             loc_133114
MOV             R1, SP
BL              sub_13E6D8
B               loc_133124
LDR             R0, [R1,#0x38]
CMP             R0, #0
MOVNE           R1, SP
BLNE            sub_13E7C8
MOV             R0, R4
BL              sub_1327BC
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
