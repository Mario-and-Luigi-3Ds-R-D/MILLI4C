PUSH            {R4-R6,LR}
SUB             SP, SP, #8
LDR             R0, [R2,#8]
LDR             R6, =off_6CE970
LDR             R5, [R2,#0xC]
UXTH            R1, R0
LDR             R0, [R6]
BL              sub_52FACC
MOV             R4, R0
LDRB            R0, [R0,#0x31]
CMP             R0, #0
MOVEQ           R2, #0x20000
MOVNE           R2, #0x10000
CMP             R2, #0x10000
MOVEQ           R0, #0x10000
BEQ             loc_212798
CMP             R2, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
LDRB            R1, [R4,#0x32]
CMP             R1, #0
LDRB            R1, [R4,#0x33]
MOVNE           R3, #1
MOVEQ           R3, #0
CMP             R1, #1
MOVNE           R1, #0
CMP             R1, #0
LDR             R1, [R4,#0x1C]
BIC             R12, R1, #0x800000
MOVNE           R1, #0x800000
MOVEQ           R1, #0
ORR             R1, R1, R12
AND             R12, R5, #0xFF000
CMP             R12, #0xC0000
STR             R1, [R4,#0x1C]
BEQ             loc_2127FC
BGT             loc_2127F0
CMP             R12, #0x40000
CMPNE           R12, #0x41000
BNE             loc_21282C
B               loc_212814
CMP             R12, #0xC1000
CMPNE           R12, #0xC2000
BNE             loc_21282C
MOV             R1, R5
MOV             R0, R4
BL              sub_572670
NOP
NOP
B               loc_21282C
STR             R3, [SP,#0x18+var_18]
STR             R3, [SP,#0x18+var_14]
MOV             R3, R0
MOV             R1, R5
MOV             R0, R4
BL              sub_57162C
MOV             R0, #1
STRB            R0, [R4,#0x34]
LDR             R0, =sub_10640C
LDR             R1, [R6]
ADD             R0, R0, R1; sub_10640C
MOV             R1, R4
BL              sub_1CF9FC
ADD             SP, SP, #8
MOV             R0, #0
POP             {R4-R6,PC}
