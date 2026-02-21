PUSH            {R4-R7,LR}
MOV             R6, R0
SUB             SP, SP, #0x14
LDRB            R0, [R0]
MOV             R7, R1
MOV             R5, R2
CMP             R0, #0
BEQ             loc_13E454
ADD             R4, R6, #0x34 ; '4'
MOV             R0, R4
BL              sub_13273C
ADD             R0, R6, R7,LSL#2
LDR             R1, [R0,#0x14]
CMP             R1, #0
BEQ             loc_13E444
ADD             R6, SP, #0x28+var_24
ADD             R1, R5, #0x280
ADD             R2, R5, #0x500
ADD             R3, R5, #0x780
STR             R5, [SP,#0x28+var_28]
STM             R6, {R1-R3}
MOV             R1, #0xA0
LDR             R3, [R0,#0x14]!
LDR             R2, [R0,#8]
MOV             R0, SP
BLX             R3
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R7,LR}
B               sub_1327BC
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
