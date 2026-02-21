PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
ADD             R6, R0, #0x14000
LDR             R0, [R6,#0x184]
CMP             R0, #0
BEQ             loc_168980
LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             loc_168980
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
LDR             R6, [R6,#0x184]
ADD             R0, R4, R4,LSL#2
ADD             R0, R5, R0,LSL#3
ADD             R7, R0, #0x17000
LDR             R0, [R6]
ADD             R7, R7, #0xC8
LDR             R1, [R0,#8]
MOV             R0, R6
BEQ             loc_168934
BLX             R1
SUB             R0, R0, #5
CMP             R0, #4
BLS             loc_168948
B               loc_168980
NOP
BLX             R1
SUB             R0, R0, #5
CMP             R0, #4
BHI             loc_168980
ADD             R1, R6, #0x400
MOV             R2, #0x10
ADD             R1, R1, #0x1BC
MOV             R0, R7
BL              sub_1103A4
ADD             R1, R6, #0x400
MOV             R2, #0x10
ADD             R1, R1, #0x224
ADD             R0, R7, #0x10
BL              sub_1103A4
LDR             R1, [R6,#0x5CC]
STR             R1, [R7,#0x20]
LDR             R0, [R6,#0x634]
STR             R0, [R7,#0x24]
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
BLT             loc_1688CC
ADD             R0, R5, #0x15000
ADD             R0, R0, #0x24 ; '$'
BL              sub_2A8470
ADD             R0, R5, #0x15000
ADD             R0, R0, #0xB0
BL              sub_2A8470
ADD             R0, R5, #0x15000
ADD             R0, R0, #0x13C
BL              sub_194888
ADD             R0, R5, #0x16000
ADD             R0, R0, #0x338
BL              sub_21F25C
MOV             R0, R5
NOP
BL              sub_193D50
ADD             R0, R5, #0x16800
ADD             R0, R0, #0x254
MOV             R4, R0
BL              sub_59BF54
MOV             R0, R4
NOP
BL              sub_59CC94
ADD             R6, R5, #0x16000
ADD             R6, R6, #0xCF0
MOV             R7, #0
LDR             R4, [R6]
CMP             R4, #0
BEQ             loc_168A24
LDR             R0, [R4]
LDR             R1, [R0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R4
BLX             R2
STR             R7, [R6]
ADD             R6, R5, #0x16C00
ADD             R6, R6, #0xF4
LDR             R4, [R6]
CMP             R4, #0
BEQ             loc_168A60
LDR             R0, [R4]
LDR             R1, [R0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R4
BLX             R2
STR             R7, [R6]
ADD             R5, R5, #0x16C00
ADD             R5, R5, #0xF8
LDR             R4, [R5]
CMP             R4, #0
BEQ             locret_168A9C
LDR             R0, [R4]
LDR             R1, [R0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R4
BLX             R2
STR             R7, [R5]
POP             {R4-R8,PC}
