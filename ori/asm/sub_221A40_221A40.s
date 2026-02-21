ADD             R0, R0, #0x144
NOP
PUSH            {R3-R11,LR}
MOV             R6, R0
LDRB            R0, [R0,#0x38]
CMP             R0, #3
BEQ             locret_221B20
CMP             R0, #1
MOV             R10, #0
BEQ             loc_221B24
CMP             R0, #2
BNE             locret_221B20
LDR             R0, [R6,#8]
LDR             R0, [R0,#8]
LDR             R1, [R0,#4]
CMP             R1, R0
BNE             locret_221B20
MOV             R0, #3
STRB            R0, [R6,#0x38]
ADD             R6, R6, #0x10
LDR             R0, [R6,#8]
LDR             R4, [R0,#4]
CMP             R4, R0
BEQ             locret_221B20
MOVS            R5, R4
BEQ             locret_221B20
LDR             R1, [R4,#8]
LDR             R0, [R1,#8]
CMP             R0, #0
LDRNE           R0, [R1,#0x14]
CMPNE           R0, #0
ADDNE           R7, R1, #0x14
BEQ             loc_221ACC
BL              sub_110D10
STR             R10, [R7]
LDR             R0, [R4,#8]
CMP             R5, #0
STR             R10, [R0,#0x28]
LDR             R1, [R5]
BEQ             loc_221B0C
LDR             R2, [R5,#4]
STR             R1, [R2]
LDM             R5, {R0,R2}
STR             R2, [R0,#4]
LDR             R0, [R6,#4]
LDR             R2, [R0]
STR             R2, [R5]
LDR             R2, [R0]
STR             R5, [R2,#4]
STR             R0, [R5,#4]
STR             R5, [R0]
LDR             R0, [R6,#8]
LDR             R4, [R1,#4]
CMP             R4, R0
MOVSNE          R5, R4
BNE             loc_221AA8
POP             {R3-R11,PC}
LDR             R0, [R6,#0x18]
MOV             R11, #0
ADD             R9, R6, #0x10
MOV             R8, R11
LDR             R5, [R0,#4]
CMP             R5, R0
MOVSNE          R7, R5
BEQ             loc_221CB0
LDR             R0, [R6,#0xC]
LDR             R10, [R5,#8]
LDR             R0, [R0,#8]
LDR             R4, [R10,#0x28]
LDR             R1, [R0]
LDR             R2, [R1,#0x14]
MOV             R1, R10
BLX             R2
CMP             R0, #0
BNE             loc_221BF4
LDRB            R0, [R4,#4]
AND             R1, R0, #4
MOVS            R1, R1,LSR#2
BEQ             loc_221BF4
BIC             R0, R0, #4
AND             R1, R0, #0x40 ; '@'
STRB            R0, [R4,#4]
MOVS            R1, R1,LSR#6
BEQ             loc_221C14
AND             R0, R0, #0x80
LDR             R3, [R10,#0x18]
MOVS            R0, R0,LSR#7
LDR             R0, [R6,#4]
BEQ             loc_221BBC
LDR             R2, =0x101
MOV             R1, R4
BL              sub_595A10
NOP
NOP
B               loc_221BC8
LDR             R2, =0x102
MOV             R1, R4
BL              sub_595A10
MOV             R1, #0
MOV             R0, R10
BL              sub_10D594
MOV             R1, #0
STR             R1, [SP,#0x28+var_28]
LDR             R12, [R6,#8]
MOV             R2, R0
LDR             R3, [R10,#0x18]
MOV             R1, R4
MOV             R0, R12
BL              sub_2FB874
LDRB            R0, [R4,#4]
ADD             R1, R8, #1
AND             R0, R0, #4
UXTH            R8, R1
MOVS            R0, R0,LSR#2
ADDEQ           R0, R11, #1
UXTHEQ          R11, R0
B               loc_221C94
BIC             R0, R0, #2
ORR             R0, R0, #1
STRB            R0, [R4,#4]
LDR             R0, [R5,#8]
LDR             R1, [R0,#8]
CMP             R1, #0
BEQ             loc_221C50
LDR             R1, [R0,#0x14]
CMP             R1, #0
ADDNE           R4, R0, #0x14
BEQ             loc_221C50
MOV             R0, R1
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4]
LDR             R1, [R5,#8]
MOVS            R0, R7
MOV             R2, #0
STR             R2, [R1,#0x28]
LDR             R7, [R0]
BEQ             loc_221C94
LDM             R0, {R1,R2}
STR             R1, [R2]
LDM             R0, {R1,R2}
STR             R2, [R1,#4]
LDR             R1, [R9,#4]
LDR             R2, [R1]
STR             R2, [R0]
LDR             R2, [R1]
STR             R0, [R2,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R9,#8]
LDR             R5, [R7,#4]
CMP             R5, R0
MOVSNE          R7, R5
BNE             loc_221B44
CMP             R11, R8
BNE             locret_221B20
MOV             R0, #2
STRB            R0, [R6,#0x38]
POP             {R3-R11,PC}
