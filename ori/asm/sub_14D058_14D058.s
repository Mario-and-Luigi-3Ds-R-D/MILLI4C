PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R6, R4, #0x100
SUB             SP, SP, #0x14
LDR             R0, =off_6CE970
LDR             R1, =0x1216D0
LDR             R8, [R2,#4]
LDR             R0, [R0]
ADD             R5, R0, R1; loc_1216D0
LDRH            R1, [R6,#0x4C]
BL              sub_52FACC
MOV             R7, R0
MOV             R0, R5
BL              sub_592EDC
MOV             R0, R7
ADD             R0, R0, #0xA0
MOV             R9, R0
MOV             R0, R7
MOV             R1, #0
BL              sub_5F0474
MOV             R7, #0
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x30+var_28]
MOV             R3, R7
MOV             R2, R9
MOV             R0, R5
STR             R7, [SP,#0x30+var_30]
STR             R7, [SP,#0x30+var_2C]
BL              sub_1137FC
LDR             R0, [R6,#4]
ADD             R2, SP, #0x30+var_24
MOV             R1, #0
STR             R0, [SP,#0x30+var_24]
MOV             R0, R5
BL              sub_12C9C4
LDRB            R0, [R4,#0xFD]
CMP             R0, #0
BEQ             loc_14D100
CMP             R0, #1
BNE             loc_14D148
B               loc_14D128
MOV             R0, #0x300
STR             R0, [SP,#0x30+var_30]
MOV             R3, #0
MOV             R2, #1
ADD             R1, R5, #0x20 ; ' '
MOV             R0, R4
BL              sub_5C4A88
NOP
NOP
B               loc_14D148
ADD             R0, R4, #0x68 ; 'h'
ADD             R6, R5, #0x40 ; '@'
VLDM            R0, {S0-S7}
ADD             R0, R5, #0x20 ; ' '
VSTM            R0, {S0-S7}
ADD             R0, R4, #0x88
LDM             R0, {R0-R3}
STM             R6, {R0-R3}
MOV             R0, R5
BL              sub_14D500
LDRB            R0, [R4,#0xF0]
CMP             R0, #2
BEQ             loc_14D16C
LDRB            R0, [R4,#0xF8]
CMP             R0, #0
STRBEQ          R7, [R5,#(loc_12173C+3 - 0x1216D0)]
BEQ             loc_14D174
MOV             R1, #3
STRB            R1, [R5,#(loc_12173C+3 - 0x1216D0)]
LDR             R6, =dword_6D2418
MOV             R1, R8
MOV             R0, R5
LDR             R2, [R6]
STR             R7, [SP,#0x30+var_30]
LDR             R3, [R4,#0x150]
BL              sub_136908
STR             R0, [R6]
ADD             SP, SP, #0x14
POP             {R4-R9,PC}
