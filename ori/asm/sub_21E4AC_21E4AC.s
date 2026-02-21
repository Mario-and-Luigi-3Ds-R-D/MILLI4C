PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, #0
LDRB            R0, [R0,#0x110]
MOV             R5, R7
CMP             R0, #0
BLE             loc_21E4F8
ADD             R6, R4, R5,LSL#2
LDR             R0, [R6,#0x10]!
CMP             R0, #0
BEQ             loc_21E4E8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
LDRB            R0, [R4,#0x110]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_21E4C8
STRB            R7, [R4,#0x110]
LDRB            R0, [R4,#0x113]
MOV             R5, #0
CMP             R0, #0
BLE             loc_21E554
ADD             R6, R4, R5,LSL#2
LDR             R0, [R6,#0x114]
CMP             R0, #0
BEQ             loc_21E544
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R6,#0x114]!
CMP             R0, #0
BEQ             loc_21E544
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
LDRB            R0, [R4,#0x113]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_21E50C
STRB            R7, [R4,#0x113]
POP             {R4-R8,PC}
