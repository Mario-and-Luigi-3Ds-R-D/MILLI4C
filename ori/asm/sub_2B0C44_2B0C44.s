PUSH            {R4-R9,LR}
ADD             R6, R0, #0x14400
MOV             R4, R0
ADD             R5, R0, #0x14400
LDR             R0, [R6]
MOV             R8, R1
SUB             SP, SP, #0xC
ADD             R5, R5, #4
LDRB            R1, [R2,R0]
MOV             R7, R2
MOV             R9, R3
STMEA           SP, {R1,R5}
LDR             R12, [R4]
ADD             R1, R4, R0,LSL#2
ADD             R1, R1, #0x13000
ADD             R1, R1, #0xCD0
LDR             R12, [R12,#0x18C]
LDR             R2, [R1]
LDR             R1, [R8,R0,LSL#2]
LDR             R3, [R5]
MOV             R0, R4
BLX             R12
LDR             R0, [R6]
LDR             R1, [R5]
LDRB            R2, [R7,R0]
CMP             R1, R2
MOVLT           R0, #1
BLT             loc_2B0CF0
ADD             R0, R0, #1
CMP             R9, R0
STR             R0, [R6]
MOV             R0, #0
BLE             loc_2B0CF0
STR             R0, [R5]
LDR             R0, [R4]
MOV             R3, R9
MOV             R2, R7
MOV             R1, R8
LDR             R12, [R0,#0x17C]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R9,LR}
BX              R12
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
