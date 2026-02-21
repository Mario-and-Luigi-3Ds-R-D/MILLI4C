PUSH            {R4-R10,LR}
ADD             R6, R0, #0x14400
MOV             R4, R0
ADD             R5, R0, #0x14400
LDR             R0, [R6]
MOV             R10, R1
SUB             SP, SP, #8
ADD             R5, R5, #4
LDRB            R1, [R3,R0]
LDR             R7, [SP,#0x28+arg_0]
MOV             R9, R2
STMEA           SP, {R1,R5}
LDR             R1, [R4]
LDR             R2, [R2,R0,LSL#2]
MOV             R8, R3
LDR             R3, [R5]
LDR             R12, [R1,#0x1AC]
MOV             R1, R10
MOV             R0, R4
BLX             R12
LDR             R0, [R6]
LDR             R1, [R5]
LDRB            R2, [R8,R0]
CMP             R1, R2
MOVLT           R0, #1
BLT             loc_2AFF04
ADD             R0, R0, #1
CMP             R7, R0
STR             R0, [R6]
MOV             R0, #0
BLE             loc_2AFF04
STR             R0, [R5]
STR             R7, [SP,#0x28+var_28]
LDR             R0, [R4]
MOV             R3, R8
MOV             R2, R9
MOV             R1, R10
LDR             R12, [R0,#0x1A0]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #8
POP             {R4-R10,PC}
