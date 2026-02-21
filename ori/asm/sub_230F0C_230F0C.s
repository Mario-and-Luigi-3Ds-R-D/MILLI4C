PUSH            {R4-R12,LR}
MOVS            R5, R2
ADD             R2, R0, #0x10
MOV             R9, #0
ADD             R6, R2, R1,LSL#2
ADD             R11, R0, R1,LSL#2
BEQ             loc_231038
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
MOV             R4, R0
LDR             R0, [R0,#0xA4]
MOV             R1, #1
STR             R0, [R6,#0x30]
LDR             R0, [R4]
LDR             R2, [R0,#0x178]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0x2F4]
ORR             R0, R0, #0x80
STRB            R0, [R4,#0x2F4]
LDR             R2, [R4,#0xA4]
LDR             R0, [R2,#0xC]
CMP             R0, #0
BEQ             loc_231200
LDR             R0, [R5,#4]
LDR             R4, [R0,#0xDC]
ADD             R1, R4, #0x18
LDM             R1, {R1,R3}
MOV             R0, R3
CMP             R1, R0
LDRNE           R12, [R1]
CMPNE           R12, R2
ADDNE           R1, R1, #4
BNE             loc_230F88
CMP             R1, R3
MOV             R0, R1
BEQ             loc_231000
ADD             R1, R0, #4
SUB             R12, R3, R1
MOV             R3, R12,ASR#2
CMP             R3, #0
BLE             loc_231000
MOVS            R3, R12,LSL#29
BPL             loc_230FD4
LDR             R3, [R1]
ADD             R1, R1, #4
CMP             R3, R2
STRNE           R3, [R0],#4
MOVS            R3, R12,ASR#3
BEQ             loc_231000
LDR             R12, [R1]
CMP             R12, R2
STRNE           R12, [R0],#4
LDR             R12, [R1,#4]!
ADD             R1, R1, #4
CMP             R12, R2
STRNE           R12, [R0],#4
SUBS            R3, R3, #1
BNE             loc_230FDC
LDR             R1, [R4,#0x1C]
STR             R0, [R4,#0x1C]
CMP             R1, R0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R1, #0
STRNE           R9, [R2,#0xC]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
B               loc_231200
MOV             R0, #0
STR             R0, [R6,#0x30]
LDR             R5, [R11,#0x1A4]
CMP             R5, #0
BEQ             loc_231200
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
LDR             R1, [R0,#0xA4]
MOV             R8, R0
LDR             R0, [R1,#0xC]
CMP             R0, #0
BNE             loc_2311DC
LDR             R0, [R5,#4]
MOV             R6, R1
LDR             R4, [R0,#0xDC]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2310A0
CMP             R0, R1
BEQ             loc_2311C4
BL              sub_5E8330
CMP             R0, #0
NOP
BNE             loc_2311C4
LDR             R0, [R6,#0xC]
CMP             R0, #0
BNE             loc_2311C4
ADD             R0, R4, #0x1C
LDR             R3, [R4,#0x18]
LDM             R0, {R0,R2}
MOV             R1, #1
SUB             R3, R0, R3
BIC             R0, R2, #0xC0000000
CMP             R0, R3,ASR#2
BGT             loc_2311A0
CMP             R0, #0
MOVNE           R7, R0,LSL#1
MOVEQ           R7, #1
BIC             R0, R2, #0xC0000000
CMP             R0, R7
BGE             loc_2311A0
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_2310FC
AND             R0, R2, #0xC0000000
CMP             R0, #0x40000000
BEQ             loc_231104
MOV             R1, R9
B               loc_2311B8
LDR             R0, [R4,#0x14]
MOV             R1, R7,LSL#2
LDR             R2, [R0]
LDR             R3, [R2,#8]
MOV             R2, #0x20 ; ' '
BLX             R3
MOV             R9, R0
ADD             R0, R4, #0x18
MOV             R10, #0
LDM             R0, {R0,R2}
CMP             R0, R2
MOVNE           R1, R9
BEQ             loc_231164
CMP             R1, #0
LDRNE           R12, [R0]
ADD             R0, R0, #4
STRNE           R12, [R1]
CMP             R0, R2
ADD             R1, R1, #4
BNE             loc_231138
LDR             R0, [R4,#0x1C]
LDR             R1, [R4,#0x18]
SUB             R0, R0, R1
MOV             R10, R0,ASR#2
LDR             R1, [R4,#0x18]
CMP             R1, #0
BEQ             loc_231180
LDR             R0, [R4,#0x14]
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BLX             R2
ADD             R0, R9, R10,LSL#2
STR             R0, [R4,#0x1C]
STR             R9, [R4,#0x18]
LDR             R0, [R4,#0x20]
MOV             R1, #1
AND             R0, R0, #0xC0000000
ORR             R0, R0, R7
STR             R0, [R4,#0x20]
LDR             R0, [R4,#0x1C]
CMP             R0, #0
STRNE           R6, [R0]
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #4
STR             R0, [R4,#0x1C]
CMP             R1, #0
LDRNE           R0, [R4,#0x10]
STRNE           R0, [R6,#0xC]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
LDRB            R0, [R8,#0x2F4]
MOV             R1, #0
BIC             R0, R0, #0x80
STRB            R0, [R8,#0x2F4]
LDR             R0, [R8]
LDR             R2, [R0,#0x178]
MOV             R0, R8
BLX             R2
MOV             R5, #0
STR             R5, [R11,#0x1A4]
POP             {R4-R12,PC}
