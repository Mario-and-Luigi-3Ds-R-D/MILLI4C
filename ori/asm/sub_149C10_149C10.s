PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             R0, R1, #1
AND             R6, R0, #0xFF
MOV             R7, R1
LDR             R0, [R4,#0x180]
MOV             R8, R2
MOV             R3, #0
ADD             R1, R0, #0x17000
SUB             SP, SP, #0xC
ADD             R1, R1, #0x390
MOV             R2, R3
MOV             R0, #0x118
BL              sub_10A358
CMP             R0, #0
MOV             R9, #0
MOVEQ           R5, #0
BEQ             loc_149C7C
LDR             R1, =off_6B8BC0
STR             R9, [R0,#4]
STR             R9, [R0,#8]
STR             R1, [R0],#0xC
STR             R9, [R0],#4
BL              sub_5931A8
SUB             R5, R0, #0x10
ADD             R0, R0, #0xF0
STRH            R9, [R0,#0x14]
LDR             R0, =off_6CE970
MOV             R1, R8
LDR             R0, [R0]
BL              sub_52FACC
MOV             R10, R0
NOP
ADD             R0, R0, #0xA0
MOV             R11, R0
MOV             R0, R10
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x30+var_28]
MOV             R3, #0
MOV             R2, R11
ADD             R0, R5, #0x10
STR             R9, [SP,#0x30+var_30]
STR             R9, [SP,#0x30+var_2C]
BL              sub_1137FC
MOV             R0, #0x114
MOV             R1, #1
STRH            R8, [R0,R5]
ADD             R0, R4, R6,LSL#2
STR             R5, [R0,#0x1BC]
MOV             R0, R1,LSL R6
LDRB            R1, [R4,#0x1B6]
ORR             R0, R0, R1
STRB            R0, [R4,#0x1B6]
ADD             R0, R4, #0x10
ADD             R1, R5, #0x10
STR             R1, [R0,R7,LSL#2]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
