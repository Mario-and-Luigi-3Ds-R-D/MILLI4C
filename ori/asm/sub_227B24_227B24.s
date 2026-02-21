PUSH            {R3-R9,LR}
MOV             R6, R0
ADD             R5, R6, #0x10000
LDR             R0, =off_6BB9AC
ADD             R5, R5, #0x2700
STR             R0, [R6]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_227B54
LDR             R0, [R0]
LDR             R1, =dword_6E2378
STRH            R0, [R1,#(word_6E23A4 - 0x6E2378)]
LDR             R0, [R6,#0x14]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_227B74
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R6,#0x14]
LDR             R0, [R6,#0x18]
CMP             R0, #0
BEQ             loc_227B90
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R6,#0x18]
LDR             R0, [R6,#0x1C]
CMP             R0, #0
BEQ             loc_227BAC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R6,#0x1C]
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x2F4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227BC8
BL              sub_300FD4
STR             R8, [R4]
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x2F8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227C04
ADD             R0, R0, #0xA400
ADD             R0, R0, #0x218
NOP
SUB             R0, R0, #0xA400
SUB             R0, R0, #0x214
BL              sub_5C191C
SUB             R0, R0, #4
NOP
BL              sub_300FD4
STR             R8, [R4]
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x2E8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227C2C
BL              sub_2289F8
NOP
NOP
BL              sub_300FD4
STR             R8, [R4]
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x2FC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227C54
BL              sub_22C868
NOP
NOP
BL              sub_300FD4
STR             R8, [R4]
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x2EC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227C78
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R4]
ADD             R4, R6, #0x12000
ADD             R4, R4, #0x6F0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227C9C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R4]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_227CBC
BL              sub_229AD4
NOP
NOP
BL              sub_300FD4
STR             R8, [R5]
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x304
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_227CE4
BL              sub_22329C
NOP
NOP
BL              sub_300FD4
STR             R8, [R4]
ADD             R9, R6, #0x12800
LDR             R5, [R9,#0xF4]
LDR             R7, [R9,#0xF0]
CMP             R7, R5
BEQ             loc_227D34
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_227D20
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5C9440
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_227CF8
LDR             R0, [R9,#0xF0]
STR             R0, [R9,#0xF4]
ADD             R9, R6, #0x12400
ADD             R9, R9, #0x308
LDR             R5, [R9,#0xF4]
LDR             R7, [R9,#0xF0]
CMP             R7, R5
BEQ             loc_227D90
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_227D7C
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5C960C
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_227D54
LDR             R0, [R9,#0xF0]
MOV             R5, #0
ADD             R4, R6, #8
STR             R0, [R9,#0xF4]
LDR             R2, [R6,#0x10]
ADD             R0, R6, #0xC
CMP             R2, R0
BNE             loc_227F70
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5C9440
ADD             R0, R6, #0x13000
ADD             R0, R0, #0x510
STR             R5, [R4]
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R6, R0, #0x13000
MOV             R2, #0x3F4
LDR             R1, =sub_14F3EC
SUB             R6, R6, #0x11C
MOV             R3, #2
SUB             R0, R0, R2,LSL#1
BLX             sub_1009D8
ADD             R6, R6, #0x12000
ADD             R6, R6, #0x920
LDR             R5, [R6]
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_227E4C
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R8, [R0,#8]
STR             R8, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_227E10
LDRB            R0, [R6,#-4]
SUB             R4, R6, #0x14
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_227E6C
BL              sub_110D10
STR             R8, [R4]
SUB             R4, R4, #0x14
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_227E8C
BL              sub_110D10
STR             R8, [R4]
SUB             R7, R4, #8
LDR             R5, [R4,#-4]!
LDR             R6, [R4,#-4]
CMP             R6, R5
BEQ             loc_227EDC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_227EC8
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5C9440
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_227EA0
LDR             R5, [R7,#-0xF4]!
LDR             R6, [R7,#-4]!
CMP             R6, R5
BEQ             loc_227F28
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_227F14
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5C960C
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_227EEC
SUB             R0, R7, #0x12400
SUB             R0, R0, #0x3D4
BL              sub_22B084
SUB             R4, R0, #0x1C
LDR             R0, [R0,#-0x14]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_227F58
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5C9440
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #8
POP             {R3-R9,PC}
LDR             R0, [R4,#4]
ADD             R1, R4, #4
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_227DC0
