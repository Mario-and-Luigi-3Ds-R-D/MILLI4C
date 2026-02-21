PUSH            {R4-R12,LR}
MOV             R7, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xB4]
MOV             R0, R7
BLX             R1
MOV             R4, #0
ADD             R0, R7, R4
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x289]
CMP             R0, #0
BEQ             loc_2AF074
LDR             R1, [R7]
ADD             R0, R0, R0,LSL#2
LDR             R2, [R1,#0xBC]
MOV             R1, R0,LSL#2
MOV             R0, R7
BLX             R2
ADD             R1, R7, R4,LSL#2
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0xE4
STR             R0, [R1]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2AF038
MOV             R11, #0
ADD             R0, R7, R11
ADD             R8, R0, #0x14000
LDRB            R0, [R8,#0x289]
CMP             R0, #0
MOVNE           R4, #0
BLE             loc_2AF128
ADD             R0, R7, R11,LSL#2
ADD             R9, R0, #0x13C00
ADD             R10, R0, #0x13C00
ADD             R9, R9, #0x9C
ADD             R10, R10, #0xE4
LDR             R3, [R9]
LDR             R1, [R10]
ADD             R2, R4, R4,LSL#2
ADD             R5, R3, R4,LSL#6
ADD             R6, R1, R2,LSL#2
LDR             R1, [R5,#0x10]
MOV             R0, #0
STR             R0, [R6]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
STRD            R0, R1, [R6,#0xC]
LDR             R0, [R5,#0x3C]
CMP             R0, #0
BNE             loc_2AF118
LDR             R0, [R7]
MOV             R2, R5
MOV             R1, R6
LDR             R3, [R0,#0xC0]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
ADD             R2, R5, #8
ADD             R1, R6, #8
LDR             R3, [R0,#0xC0]
MOV             R0, R7
BLX             R3
LDRB            R0, [R8,#0x289]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_2AF0B0
ADD             R11, R11, #1
CMP             R11, #2
BLT             loc_2AF084
POP             {R4-R12,PC}
