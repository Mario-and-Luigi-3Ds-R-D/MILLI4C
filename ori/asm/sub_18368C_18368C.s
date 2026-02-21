PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R1, R2
MOV             R5, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
ADD             R4, R3, #8
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R5,#4]
MOV             R0, R5
BLX             R12
LDR             R8, [R4,#4]
CMN             R8, #1
BEQ             loc_1836E4
LDRB            R2, [R6,#0x14]
LDR             R3, =0x13C8C
LDR             R1, [R5,#4]
ADD             R2, R3, R2,LSL#2
LDR             R1, [R1,R2]
ADD             R1, R1, R8,LSL#1
LDRB            R8, [R1,#1]
LDR             R1, [R4,#0x10]
LDR             R10, [R4,#8]!
LDR             R5, [R5,#4]
CMP             R1, #0
LDR             R1, [R0]
LDR             R7, [R4,#4]
MOV             R9, R0
MOVNE           R6, #1
LDR             R1, [R1,#0x38]
MOVEQ           R6, #0
BLX             R1
CMN             R10, #1
CMPNE           R6, #0
MOV             R4, R0
BEQ             loc_18372C
LDR             R0, [R4,#0xA4]
LDRB            R0, [R0,#0x6C]
STRH            R0, [R4,#0xB4]
CMN             R8, #1
BEQ             loc_183760
CMP             R6, #0
LDRHNE          R0, [R4,#0xB0]
MOV             R3, R5
MOV             R2, R8
STRHNE          R0, [R4,#0xB2]
MOV             R1, R4
MOV             R0, R9
BL              sub_1F1E60
NOP
NOP
B               loc_18376C
CMP             R6, #0
MOVNE           R0, #0xFFFFFFFF
STRHNE          R0, [R4,#0xB2]
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
MOV             R1, R10
LDR             R12, [R0,#0x54]
MOV             R0, R4
BLX             R12
CMN             R7, #1
LDRNE           R0, [R4,#0xA4]
STRHNE          R7, [R0,#0x16]
MOV             R0, #0
POP             {R4-R10,PC}
