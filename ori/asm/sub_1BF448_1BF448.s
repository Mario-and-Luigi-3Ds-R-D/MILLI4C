PUSH            {R3-R11,LR}
MOV             R6, R0
MOV             R9, R2
MOV             R10, R1
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#4]
ADD             R2, R10, R10,LSL#1
LDR             R11, =unk_68C882
MOV             R4, #0
LDRB            R1, [R1,#0xDE]
MOV             R1, R1,LSL#30
MOV             R1, R1,LSR#31
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x94
LDR             R0, [R0]
ADD             R0, R0, R2,LSL#5
STR             R0, [SP,#0x28+var_28]
LDR             R0, =byte_68DBBB
RSB             R3, R4, R4,LSL#4
ADD             R7, R11, R4,LSL#5
LDR             R2, [R6,#4]
LDRB            R1, [R0]
LDR             R0, =0x19C98
ADD             R3, R3, R4,LSL#5
LDRSH           R8, [R7,#8]
ADD             R0, R0, R3,LSL#2
CMP             R4, R1
ADD             R5, R2, R0
BGE             loc_1BF54C
CMN             R10, #1
BEQ             loc_1BF528
LDR             R0, [R5]
LDR             R1, [SP,#0x28+var_28]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
LDRH            R0, [R7,#0x1E]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_1BF50C
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R2, #0
LDR             R0, [R6,#4]
MOV             R3, #0
MOV             R1, R8
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x70]
MOV             R0, R5
BL              sub_1949CC
CMN             R9, #1
LDRNE           R0, [R5,#0xA4]
MOV             R1, #1
STRHNE          R9, [R0,#0x16]
LDR             R0, [R5]
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
B               loc_1BF560
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #0x9F
BLT             loc_1BF498
POP             {R3-R11,PC}
