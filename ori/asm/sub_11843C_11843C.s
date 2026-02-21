PUSH            {R4-R11,LR}
SUB             SP, SP, #8
MOV             R5, #0
LDRB            R1, [R0,#8]
CMP             R1, #0
BLE             loc_1185D0
LDR             R1, =0x125
ADD             R9, R0, R5,LSL#2
MOV             R2, #0x2C0
SUB             R7, R2, #0xF
MUL             R1, R5, R1
ADD             R6, R0, #0x29C
ADD             R1, R0, R1,LSL#3
STR             R1, [SP,#0x2C+var_2C]
LDR             R12, [R9,#0xC]
ADD             R1, R1, #0x368
LDRB            R3, [R12,#6]
CMP             R3, #0
BEQ             loc_118494
MOV             R2, #0x290
SUB             R7, R2, #0xF
ADD             R6, R0, #0x2A0
LDR             R3, [R12,#0x18]
MOV             R4, #0
ADD             R8, R3, R12
LDR             R3, [R12,#0x1C]
CMP             R3, #0
ORRHI           R2, R2, #0x80000000
ORRHI           R2, R2, #0x3F0000
STRHI           R2, [SP,#0x2C+var_28]
BLS             loc_1185A4
ADD             R2, R4, R4,LSL#2
ADD             R3, R8, R2,LSL#2
ADD             R2, R3, #4
LDRH            R10, [R3]
CMP             R10, #0
BEQ             loc_1184E4
CMP             R10, #1
BEQ             loc_118500
CMP             R10, #2
BNE             loc_118594
B               loc_118534
LDR             R10, [R3,#4]
LDRH            R2, [R3,#2]
LDR             R3, [R6]
AND             R10, R10, #1
ORR             R2, R3, R10,LSL R2
STR             R2, [R6]
B               loc_118594
LDM             R2, {R11,LR}
LDR             R10, [R2,#8]
LDR             R2, [R2,#0xC]
ORR             R11, R11, LR,LSL#8
MOV             R10, R10,LSL#16
ORR             R2, R10, R2,LSL#24
ORR             R2, R2, R11
STR             R2, [R1],#4
LDRH            R2, [R3,#2]
ADD             R2, R2, R7
ORR             R2, R2, #0xF0000
STR             R2, [R1]
B               loc_118590
LDRH            R10, [R3,#2]
LDR             R3, =0xEAD0FEAD
STR             R10, [R1],#4
LDR             R10, [SP,#0x2C+var_28]
STR             R10, [R1],#4
LDR             R11, [R2,#8]
LDR             R10, [R2,#0xC]
MOV             R11, R11,LSL#8
MOV             R11, R11,LSR#24
ORR             R10, R11, R10,LSL#8
STR             R10, [R1],#4
LDR             R10, [R2,#8]
LDR             R11, [R2,#4]
MOV             R10, R10,LSL#16
MOV             R11, R11,LSR#8
PKHBT           R10, R11, R10
STR             R10, [R1],#4
LDR             R10, [R2]
LDR             R2, [R2,#4]
BIC             R10, R10, #0xFF000000
ORR             R2, R10, R2,LSL#24
STRD            R2, R3, [R1]
ADD             R1, R1, #4
ADD             R1, R1, #4
LDR             R2, [R12,#0x1C]
ADD             R4, R4, #1
CMP             R2, R4
BHI             loc_1184B8
LDR             R2, [SP,#0x2C+var_2C]
ADD             R9, R9, #0x12800
ADD             R9, R9, #0x68 ; 'h'
SUB             R1, R1, R2
SUB             R1, R1, #0x368
ADD             R5, R5, #1
MOV             R1, R1,ASR#2
STR             R1, [R9]
LDRB            R1, [R0,#8]
CMP             R1, R5
BGT             loc_118454
ADD             SP, SP, #8
POP             {R4-R11,PC}
