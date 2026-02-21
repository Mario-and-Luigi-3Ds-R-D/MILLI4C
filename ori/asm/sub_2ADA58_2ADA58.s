PUSH            {R3-R11,LR}
MOV             R7, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xA0]
MOV             R0, R7
BLX             R1
MOV             R4, #0
ADD             R0, R7, R4
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x287]
CMP             R0, #0
BEQ             loc_2ADAB0
LDR             R1, [R7]
ADD             R0, R0, R0,LSL#3
LDR             R2, [R1,#0xA8]
MOV             R1, R0,LSL#2
MOV             R0, R7
BLX             R2
ADD             R1, R7, R4,LSL#2
ADD             R1, R1, #0x13000
ADD             R1, R1, #0xCD0
STR             R0, [R1]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2ADA74
MOV             R0, #0
MOV             R11, R0
STR             R0, [SP,#0x28+var_28]
ADD             R0, R0, R7
ADD             R8, R0, #0x14000
LDRB            R0, [R8,#0x287]
CMP             R0, #0
MOVNE           R4, #0
BLE             loc_2ADBB4
LDR             R0, [SP,#0x28+var_28]
ADD             R0, R7, R0,LSL#2
ADD             R10, R0, #0x13C00
ADD             R9, R0, #0x13000
ADD             R10, R10, #0x94
ADD             R9, R9, #0xCD0
LDR             R2, [R10]
LDR             R0, [R9]
ADD             R3, R4, R4,LSL#1
ADD             R1, R4, R4,LSL#3
ADD             R5, R2, R3,LSL#5
ADD             R6, R0, R1,LSL#2
LDR             R2, [R5,#0x34]
STR             R11, [R6]
STR             R11, [R6,#4]
STR             R11, [R6,#8]
STR             R11, [R6,#0xC]
STR             R11, [R6,#0x10]
STR             R11, [R6,#0x14]
STR             R11, [R6,#0x18]
STR             R2, [R6,#0x20]
STR             R11, [R6,#0x1C]
LDR             R0, [R5,#0x5C]
CMP             R0, #0
BNE             loc_2ADBA4
LDR             R0, [R7]
MOV             R2, R5
MOV             R1, R6
LDR             R3, [R0,#0xAC]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
ADD             R2, R5, #8
ADD             R1, R6, #8
LDR             R3, [R0,#0xAC]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
ADD             R2, R5, #0x10
ADD             R1, R6, #0x10
LDR             R3, [R0,#0xAC]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
ADD             R2, R5, #0x18
ADD             R1, R6, #0x18
LDR             R3, [R0,#0xAC]
MOV             R0, R7
BLX             R3
LDRB            R0, [R8,#0x287]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_2ADAF8
LDR             R0, [SP,#0x28+var_28]
ADD             R0, R0, #1
CMP             R0, #2
STR             R0, [SP,#0x28+var_28]
BLT             loc_2ADAC8
POP             {R3-R11,PC}
