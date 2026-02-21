PUSH            {R3-R11,LR}
MOV             R6, R0
MOV             R9, R2
MOV             R10, R1
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#4]
ADD             R2, R10, R10,LSL#1
LDR             R11, =unk_68D002
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
LDR             R0, =byte_68DBBC
RSB             R12, R4, R4,LSL#4
RSB             R1, R4, R4,LSL#4
ADD             R7, R11, R12,LSL#1
LDRB            R3, [R0]
LDR             R0, =0x19C98
LDR             R2, [R6,#4]
ADD             R1, R1, R4,LSL#5
LDRSH           R8, [R7,#8]
ADD             R0, R0, R1,LSL#2
CMP             R4, R3
ADD             R5, R2, R0
BGE             loc_1B3024
CMN             R10, #1
BEQ             loc_1B2FA4
LDR             R0, [R5]
LDR             R1, [SP,#0x28+var_28]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
MOV             R0, #0
STRH            R0, [R5,#0xB8]
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
LDRH            R1, [R7,#0x1C]
CMP             R0, #0xA
MOVHI           R0, #0xA
CMP             R1, #0
MOVEQ           R2, #0
BEQ             loc_1B2F7C
UXTH            R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
MOV             R2, R0,LSR#16
LDR             R0, [R6,#4]
MOV             R3, #0
MOV             R1, R8
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x70]
MOV             R0, R5
BL              sub_1949CC
NOP
NOP
B               loc_1B3000
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
LDRH            R1, [R7,#0x1C]
CMP             R0, #0xA
MOVHI           R0, #0xA
CMP             R1, #0
MOVEQ           R2, #0
BEQ             loc_1B2FDC
UXTH            R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
MOV             R2, R0,LSR#16
LDR             R1, [R6,#4]
LDR             R3, [R5]
ADD             R0, R1, #0x400
MOV             R1, R8
LDR             R12, [R3,#0x3C]
VLDR            S0, [R0,#0x70]
MOV             R3, #0
MOV             R0, R5
BLX             R12
CMN             R9, #1
LDRNE           R0, [R5,#0xA4]
MOV             R1, #1
STRHNE          R9, [R0,#0x16]
LDR             R0, [R5]
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
B               loc_1B3038
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #0x9F
BLT             loc_1B2EEC
POP             {R3-R11,PC}
