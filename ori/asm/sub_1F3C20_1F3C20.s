PUSH            {R4-R6,LR}
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R4, R0, #0x15000
ADD             R4, R4, #0x13C
LDRB            R0, [R4,#0x9F]
CMP             R0, #0xFF
BEQ             locret_1F3C94
LDR             R0, [R5]
MOV             R6, #0
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDRB            R1, [R4,#0x9F]
LDR             R0, [R4,#0xA4]
ADD             R1, R4, R1,LSL#2
STR             R0, [R1,#0xC]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
LDRB            R1, [R4,#0x9F]
LDR             R2, [R4,#0x98]
MOV             R3, #1
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0xC
BL              sub_163558
MOV             R0, #0xFF
STRB            R0, [R4,#0x9F]
STR             R6, [R4,#0xA4]
POP             {R4-R6,PC}
