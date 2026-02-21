PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R5, R4, #0x400
SUB             SP, SP, #0xC
LDR             R0, [R1]
LDR             R8, [R4,#0x46C]
LDR             R9, =off_6CDA80
MOV             R7, R1
CMP             R8, R0
ADD             R5, R5, #0x6C ; 'l'
BEQ             loc_224AF0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_224B9C
CMP             R8, #0
BEQ             loc_224ABC
LDR             R0, [R9]
ADD             R6, R0, #0x12800
LDR             R0, [R8]
ADD             R6, R6, #0x10C
LDR             R1, [R0]
MOV             R0, R8
BLX             R1
LDR             R0, [R6,#4]
STR             R0, [R8]
STR             R8, [R6,#4]
LDR             R0, [R6,#8]
ADD             R0, R0, #1
STR             R0, [R6,#8]
LDR             R0, [R7],#4
STR             R0, [R5],#4
CMP             R7, R5
LDRNE           R0, [R7,#4]
CMPNE           R0, R5
BEQ             loc_224AF0
LDM             R5, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R5,#4]
STR             R5, [R0]
STR             R5, [R7,#4]
STR             R7, [R5]
MOV             R7, #1
MOV             R6, #0
STRB            R7, [R4,#0x3FC]
STR             R6, [R4,#0x400]
LDR             R0, [R9]
ADD             R5, R4, #0x400
MOV             R3, #0x100
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
MOV             R2, #1
LDR             R0, [R0]
LDR             R0, [R0,#0x4A0]
CMP             R0, R4
MOVEQ           R1, #0xA
MOVNE           R1, #0xB
ADD             R0, R4, #8
BL              sub_14C548
NOP
NOP
BL              sub_4635D8
MOV             R1, R0
ADD             R0, R4, #8
BL              sub_14E9C8
STRB            R7, [R4,#0xF9]
LDRB            R0, [R5,#0x7C]
STRB            R0, [R4,#0xFE]
LDRB            R0, [R4,#4]
CMP             R0, #0
BEQ             loc_224B94
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_4635D8
MOV             R1, #9
MOV             R3, R0
STMEA           SP, {R1,R6}
ADD             R2, R4, #8
MOV             R1, #0x7B ; '{'
MOV             R0, R5
BL              sub_52C764
STR             R0, [R4,#0x480]
STRH            R6, [R0,#0xA]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_224ABC
