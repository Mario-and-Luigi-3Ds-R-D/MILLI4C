PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
MOV             R9, R1
MOV             R8, R2
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#4]
MOV             R2, R9
LDRB            R1, [R1,#0xDE]
MOV             R1, R1,LSL#30
MOV             R1, R1,LSR#31
BL              sub_1F343C
LDR             R11, =unk_68C17A
STR             R0, [SP,#0x30+var_30]
SXTH            R0, R9
MOV             R4, #0
STR             R0, [SP,#0x30+var_2C]
LDR             R0, =byte_68DBBA
LDR             R12, =0x19C98
RSB             R3, R4, R4,LSL#4
LDR             R1, [R6,#4]
LDRB            R2, [R0]
ADD             R0, R3, R4,LSL#5
RSB             R3, R4, R4,LSL#4
ADD             R12, R12, R0,LSL#2
ADD             R0, R11, R3,LSL#1
CMP             R4, R2
LDRSH           R7, [R0,#0x12]
ADD             R5, R1, R12
BGE             loc_240ED0
CMN             R9, #1
BEQ             loc_240E60
LDR             R0, [R5]
LDR             R1, [SP,#0x30+var_30]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
MOV             R0, #0
STRH            R0, [R5,#0xB8]
LDR             R0, [SP,#0x30+var_2C]
STRH            R0, [R5,#0xB0]
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
CMP             R0, #0x18
LDR             R1, =dword_6D1F40
MOVHI           R0, #0x18
UXTH            R10, R0
MOV             R0, R1
BL              sub_546DB0
MUL             R0, R0, R10
MOV             R3, #0
MOV             R1, R7
MOV             R2, R0,LSR#16
LDR             R0, [R6,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x70]
MOV             R0, R5
BL              sub_1949CC
NOP
NOP
B               loc_240EAC
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
CMP             R0, #0x18
MOVHI           R0, #0x18
UXTH            R10, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R10
LDR             R1, [R6,#4]
MOV             R3, #0
MOV             R2, R0,LSR#16
LDR             R0, [R5]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x70]
LDR             R12, [R0,#0x3C]
MOV             R1, R7
MOV             R0, R5
BLX             R12
CMN             R8, #1
LDRNE           R0, [R5,#0xA4]
MOV             R1, #1
STRHNE          R8, [R0,#0x16]
LDR             R0, [R5]
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
B               loc_240EE4
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #0x9F
BLT             loc_240DAC
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
