PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#4]
MOV             R7, #0
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_16080C
ADD             R5, R4, #0x15000
LDRB            R0, [R5,#0xA0]
CMP             R0, #4
BCC             loc_160770
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68AEE8
LDM             R0, {R1,R2}
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,LR}
BX              R12
ADD             R1, R4, R0,LSL#1
ADD             R1, R1, #0x15000
LDRH            R1, [R1,#0x98]
SUB             R2, R1, #0xFF00
SUBS            R2, R2, #0xFF
BEQ             loc_1607F4
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_158E18
MOV             R6, R0
LDR             R0, =dword_6ED9B8
MOV             R2, #0x7F
MOV             R1, R6
LDR             R0, [R0]
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
LDRB            R1, [R5,#0xA0]
MOV             R3, R0; int
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x15000
STR             R0, [R1,#0x88]
STRD            R6, R7, [SP,#0x20+var_20]; int
LDRB            R1, [R5,#0xA0]
LDR             R0, [R4,#4]; int
ADD             R1, R4, R1,LSL#1
ADD             R1, R1, #0x15000
LDRH            R2, [R1,#0x98]; int
MOV             R1, #0; int
BL              sub_532898
NOP
NOP
B               loc_160800
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x15000
STR             R7, [R0,#0x88]
LDRB            R0, [R5,#0xA0]
ADD             R0, R0, #1
STRB            R0, [R5,#0xA0]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
