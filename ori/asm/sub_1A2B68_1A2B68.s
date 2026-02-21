PUSH            {R4-R8,LR}
MOV             R6, R1
SUB             SP, SP, #0x10
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6BB568
MOV             R7, #0
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
STR             R1, [R0]
ADD             R1, R0, #8
STR             R1, [R0,#0x80]
STR             R1, [R0,#0x84]
ADD             R1, R0, #0x8C
STR             R7, [R0,#0x88]
STR             R1, [R0,#0x90]
STR             R1, [R0,#0x8C]
STRD            R6, R7, [R0,#0x94]
STR             R7, [R0,#0x9C]
ADD             R1, R0, #0xA8
STR             R7, [R0,#0xA4]
STR             R1, [R0,#0xAC]
STR             R1, [R0,#0xA8]
ADD             R1, R0, #0xB4
STR             R7, [R0,#0xB0]
STR             R1, [R0,#0xB8]
STR             R1, [R0,#0xB4]
ADD             R1, R0, #0xC0
STR             R7, [R0,#0xBC]
STR             R1, [R0,#0xC4]
STR             R1, [R0,#0xC0]
ADD             R1, R0, #0xCC
STR             R7, [R0,#0xC8]
STR             R1, [R0,#0xD0]
STR             R1, [R0,#0xCC]!
ADD             R0, R0, #8
BL              sub_14F198
LDR             R6, [R6,#0x18]
SUB             R4, R0, #0xD4
ADD             R5, R0, #0x3F8
LDR             R0, [R6]
LDR             R1, [R0,#0x54]
MOV             R0, R6
BLX             R1
ADD             R1, R6, #0x24 ; '$'
STR             R0, [R5]
LDM             R1, {R0-R2}
ADD             R3, R5, #4
STM             R3, {R0-R2}
MOV             R0, R6
BL              sub_5C55B8
STR             R0, [R5,#0x10]
LDRB            R0, [R6,#0xF3]
LDR             R8, =off_6CE970
STRB            R0, [R5,#0x14]
LDRB            R0, [R6,#0xF4]
STRB            R0, [R5,#0x15]
LDRB            R0, [R6,#0xF0]
STRB            R0, [R5,#0x16]
LDR             R0, =sub_10D4F0
LDR             R1, [R8]
ADD             R5, R4, #0x400
ADD             R5, R5, #0xE4
LDR             R6, [R1,R0]
LDR             R0, [R6]
LDR             R1, [R0,#0x54]
MOV             R0, R6
BLX             R1
ADD             R1, R6, #0x24 ; '$'
STR             R0, [R5]
LDM             R1, {R0-R2}
ADD             R3, R5, #4
STM             R3, {R0-R2}
MOV             R0, R6
BL              sub_5C55B8
STR             R0, [R5,#0x10]
LDRB            R0, [R6,#0xF3]
MOV             R3, #0
MOV             R2, R3
STRB            R0, [R5,#0x14]
LDRB            R0, [R6,#0xF4]
STRB            R0, [R5,#0x15]
LDRB            R0, [R6,#0xF0]
STRB            R0, [R5,#0x16]
LDR             R0, =off_6CE388
STR             R4, [R0]
STR             R7, [R4,#0x4C8]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x6DC
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1A1FD0
STR             R0, [R4,#0x98]
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x14
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1A6544
STR             R0, [R4,#0x9C]
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x18
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1A65A0
STR             R0, [R4,#0xA0]
ADD             R5, R4, #0x88
MOV             R1, R4
MOV             R0, SP
BL              sub_1A2850
LDR             R0, [R5]
MOV             R6, SP
MOV             R7, #0
CMP             R0, #0
BEQ             loc_1A2D58
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x28+var_28]
LDR             R0, [R5]
CMP             R0, R1
BEQ             loc_1A2DC8
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_1A2E1C
CMP             R0, #0
BEQ             loc_1A2D8C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x28+var_28]
STR             R0, [R5],#4
ADD             R0, R6, #4
CMP             R0, R5
LDRNE           R1, [SP,#0x28+var_20]
CMPNE           R1, R5
BEQ             loc_1A2DC8
MOV             R3, R1
LDM             R5, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R5,#4]
STR             R5, [R3]
STR             R5, [SP,#0x28+var_20]
STR             R0, [R5]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_1A2E04
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_1A2E04
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R8,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1A2D8C
