PUSH            {R4-R6,LR}
SUB             SP, SP, #0x20
MOV             R4, R0
MOV             R0, #0
LDR             R5, =byte_6D25B0
STR             R0, [SP,#0x30+var_28]
STR             R0, [SP,#0x30+var_24]
STR             R0, [SP,#0x30+var_20]
STR             R0, [SP,#0x30+var_1C]
STR             R0, [SP,#0x30+var_18]
STR             R0, [SP,#0x30+var_14]
LDRB            R0, [R5]
MOV             R6, R1
CMP             R0, #0
LDRNE           R0, =0xE0A04FF9
BNE             loc_107A68
BL              sub_119B9C
LDR             R1, =0xFE400000
CMP             R1, R0,LSL#22
MOVSNE          R0, R0,LSR#31
BLNE            sub_128434
MOV             R0, R6
BL              sub_300168
MOV             R2, R0
LDR             R0, =dword_6D4AC0
MOV             R3, #0
MOV             R1, R6
BL              sub_119C04
MOVS            R0, R0,LSR#31
BLNE            sub_128434
ADD             R1, SP, #0x30+var_14
ADD             R0, SP, #0x30+var_18
STRD            R0, R1, [SP,#0x30+var_30]
ADD             R3, SP, #0x30+var_1C
ADD             R2, SP, #0x30+var_20
ADD             R1, SP, #0x30+var_24
ADD             R0, SP, #0x30+var_28
BL              sub_10E838
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R1, [SP,#0x30+var_28]
MOV             R3, #1
MOV             R2, #0x2B0
ADD             R0, R4, #0x2C ; ','
BL              sub_128318
LDR             R0, [R4,#0x34]
ADD             R1, R0, #0x158
STR             R0, [R4,#4]
ADD             R2, R0, #0xA8
STR             R1, [R4,#0x20]
ADD             R3, R0, #0x108
STR             R2, [R4,#0xC]
ADD             R12, R0, #0x238
STR             R3, [R4,#0x14]
STR             R12, [R4,#0x28]
LDR             R0, [SP,#0x30+var_24]
STR             R0, [R4]
LDR             R0, [SP,#0x30+var_20]
STR             R0, [R4,#8]
LDR             R0, [SP,#0x30+var_1C]
STR             R0, [R4,#0x10]
LDR             R0, [SP,#0x30+var_18]
STR             R0, [R4,#0x1C]
LDR             R0, [SP,#0x30+var_14]
STR             R0, [R4,#0x24]
MOV             R0, #1
STRB            R0, [R5]
MOV             R0, #0
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R6,PC}
