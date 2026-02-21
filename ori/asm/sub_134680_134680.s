PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R6, R5, #0x2D4
LDR             R0, [R0,#4]
LDR             R1, [R0]
ADD             R2, R1, #1
STR             R2, [R0]
LDR             R0, [R5,#0x214]
LDRB            R7, [R1]
CMP             R0, #0
BEQ             loc_134708
LDR             R0, [R5,#0x218]
CMP             R0, #0
BLT             loc_134708
SUB             R0, R7, R0
MOV             R4, R0,LSL#24
ADD             R0, R5, #0x1A4
LDR             R0, [R0,#0xC]
ADD             R1, R0, R4
LDR             R2, [R5,#0x214]
MOV             R3, #0
ADD             R0, R5, #0x1A4
BL              sub_140180
STR             R7, [R5,#0x218]
ADD             R4, R5, #0x2C4
STRB            R7, [R5,#0x1C3]
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, R7
STRNE           R1, [R0,#0x24]
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_1346E8
POP             {R4-R8,PC}
LDR             R0, [R5,#4]
ADD             R8, R5, #0x100
LDR             R0, [R0,#0x88]
TST             R0, #8
TSTNE           R0, #0x10
BEQ             loc_134770
LDRB            R0, [R8,#0xC3]
SUB             R0, R7, R0
MOV             R4, R0,LSL#24
ADD             R0, R5, #0x1A4
LDR             R0, [R0,#0xC]
ADD             R1, R0, R4
MOV             R3, #0
MOV             R2, #1
ADD             R0, R5, #0x1A4
BL              sub_140180
ADD             R4, R5, #0x2C4
STRB            R7, [R5,#0x1C3]
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, R7
STRNE           R1, [R0,#0x24]
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_134750
POP             {R4-R8,PC}
LDR             R0, [R5,#8]
LDR             R0, [R0,#0x10]
CMP             R0, #0x64 ; 'd'
BNE             loc_13478C
MOV             R1, #0
MOV             R0, R5
BL              sub_58B228
LDR             R0, [R5,#0x250]
CMP             R0, #0
ADDNE           R6, R5, #0x220
MOVNE           R4, #0
BEQ             locret_134704
LDR             R0, [R6,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1347D8
MOV             R0, #0
BL              sub_13F21C
MOV             R0, R0,LSL#19
LDR             R2, [R6,R4,LSL#2]
CMP             R4, #4
MOV             R0, R0,LSR#19
SUBNE           R0, R0, #0x1000
ADD             R1, R6, R4,LSL#2
MUL             R0, R2, R0
MOV             R0, R0,ASR#12
STR             R0, [R1,#0x14]
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_1347A0
MOV             R3, #0
MOV             R2, R3
MOV             R1, R3
ADD             R0, R5, #0x1A4
BL              sub_140180
SXTB            R1, R7
MOV             R0, #0
STRB            R1, [R5,#0x1C3]
STRB            R0, [R5,#0x1C2]
STRH            R0, [R8,#0xC0]
LDR             R0, [R5,#0x214]
MOV             R2, #0x10
CMP             R0, #0
MOVEQ           R1, #0xFFFFFFFF
STR             R1, [R5,#0x218]
LDR             R1, [R5,#4]
LDR             R0, [R1,#0x88]
BIC             R3, R0, #0x10
AND             R0, R2, R0,LSL#1
ORR             R0, R0, R3
STR             R0, [R1,#0x88]
ADD             R0, R5, #0x400
ADD             R1, R5, #0x400
ADD             R0, R0, #0x14
ADD             R1, R1, #0x34 ; '4'
LDRSB           R2, [R0,#7]
CMN             R2, #1
BEQ             loc_134864
ADD             R0, R0, #8
CMP             R0, R1
BNE             loc_134848
POP             {R4-R8,PC}
CMP             R0, #0
BEQ             locret_134704
ADD             R1, R5, #0x1BC
POP             {R4-R8,LR}
NOP
