PUSH            {R3-R7,LR}
MOV             R4, R0
ADD             R5, R0, #0xD4
LDR             R0, [R0,#0x9C]
BL              sub_1A6334
MOV             R6, R0
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R6
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R5
BL              sub_14B798
MOV             R0, #0
MOV             R2, R0
STRB            R0, [R5,#0xF1]
MOV             R3, #0x100
MOV             R1, #6
ADD             R0, R4, #0xD4
BL              sub_14C548
MOV             R1, #2
ADD             R0, R4, #0xD4
BL              sub_14C450
LDR             R0, [R4,#0x98]
ADD             R1, R0, #0xA0
ADD             R0, R4, #0xD4
BL              sub_14E984
LDR             R0, [R4,#0xE0]
CMP             R0, #0
BNE             loc_1A26D4
MOV             R1, #0
ADD             R0, R4, #0xD4
BL              sub_14C3E8
MOV             R0, #1
STRB            R0, [R4,#0x1C6]
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0xD4
REV             R0, R0
ADD             R4, R4, #0x400
STR             R0, [SP,#0x18+var_18]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x18+var_18]
MOV             R1, SP
VLDR            S0, =4.0
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
ADD             R0, R5, #0x32C
BL              sub_4E665C
POP             {R3-R7,PC}
