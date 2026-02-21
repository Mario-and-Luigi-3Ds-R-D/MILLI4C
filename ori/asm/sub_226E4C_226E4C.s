PUSH            {R4-R10,LR}
ADD             R4, R0, #0x12800
ADD             R4, R4, #0x134
MOV             R5, #0
LDR             R10, =0xC00E
LDR             R8, =off_6CE970
SUB             SP, SP, #0x10
MOV             R6, R0
MOV             R7, R4
MOV             R9, R5
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
LDR             R0, [R8]
MOV             R1, R10
BL              sub_52FACC
LDR             R1, [R4]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R4
BLX             R3
ADD             R5, R5, #1
STRB            R9, [R4,#0xF2]
CMP             R5, #2
ADD             R4, R4, #0x3F4
BCC             loc_226E74
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
MOV             R0, R7
BL              sub_14C548
ADD             R0, R6, #0x12C00
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xA
ADD             R0, R0, #0x128
BL              sub_14C548
ADD             R0, R6, #0x13000
ADD             R0, R0, #0x11C
MOV             R1, #0
MOV             R5, R0
BL              sub_14C3E8
MOV             R1, #2
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R8]
MOV             R1, R10
BL              sub_52FACC
MOV             R1, R0
MOV             R2, #0
MOV             R0, R5
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xD
MOV             R0, R5
BL              sub_14C548
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x2F4
ADD             R12, SP, #0x30+var_2C
LDR             R0, [R4]
MOV             R1, SP
ADD             R3, R0, #0x400
LDR             R2, [R0,#0xC]
LDR             R0, [R0,#0x10]
LDR             R3, [R3,#0x2C]
STR             R2, [SP,#0x30+var_30]
STM             R12, {R0,R3}
MOV             R0, R5
BL              sub_14E984
LDR             R0, =0x1320E
MOV             R3, #0
MOV             R2, R3
STRB            R9, [R0,R6]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x21E88
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_226FB8
ADD             R0, R6, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
MOV             R1, R0
LDR             R2, [R4]
MOV             R0, R5
BL              sub_229150
ADD             R7, R6, #0x10000
ADD             R7, R7, #0x2700
MOV             R3, #0
STR             R0, [R7]
LDR             R0, [R8]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0xA638
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_226FF4
LDR             R1, [R4]
LDR             R1, [R1]
BL              sub_22A2F4
LDR             R1, =0x126F8
ADD             R4, R6, #8
STR             R0, [R1,R6]
ADD             R0, R6, #0x12800
ADD             R0, R0, #0x10C
LDR             R5, [R0,#4]
CMP             R5, #0
LDR             R1, [R5]
STR             R1, [R0,#4]
LDR             R1, [R0,#8]
SUB             R1, R1, #1
STR             R1, [R0,#8]
BEQ             loc_22703C
LDR             R0, =off_6BB914
STR             R9, [R5,#4]
STR             R9, [R5,#8]
STR             R0, [R5]
STR             R9, [R5,#0xC]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_227074
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x30+var_24
BLNE            sub_5C9440
STR             R5, [R4]
LDR             R0, [R7]
MOV             R1, #0
BL              sub_229124
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_22705C
