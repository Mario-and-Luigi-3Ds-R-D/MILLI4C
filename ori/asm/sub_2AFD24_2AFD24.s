PUSH            {R3-R9,LR}
ADD             R5, R0, #0x14400
ADD             R5, R5, #4
MOV             R8, R1
ADD             R6, R0, #0x14400
STR             R5, [SP,#0x20+var_20]
LDR             R1, [R0]
MOV             R4, R0
MOV             R7, R2
LDM             R6, {R0,R2}
MOV             R9, R3
LDR             R12, [R1,#0x170]
LDRB            R3, [R7,R0]
LDR             R1, [R8,R0,LSL#2]
MOV             R0, R4
BLX             R12
LDR             R0, [R6]
LDR             R1, [R5]
LDRB            R2, [R7,R0]
CMP             R1, R2
MOVLT           R0, #1
BLT             locret_2AFDB8
ADD             R0, R0, #1
CMP             R9, R0
STR             R0, [R6]
MOV             R0, #0
BLE             locret_2AFDB8
STR             R0, [R5]
LDR             R0, [R4]
MOV             R3, R9
MOV             R2, R7
MOV             R1, R8
LDR             R12, [R0,#0x15C]
ADD             SP, SP, #4
MOV             R0, R4
POP             {R4-R9,LR}
BX              R12
POP             {R3-R9,PC}
