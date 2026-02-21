PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6B2C98
MOV             R7, #0
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
STR             R1, [R0],#8
BL              sub_4A67A0
LDR             R6, =off_6CE970
SUB             R4, R0, #8
LDR             R0, [R6]
BL              sub_5EE458
MOV             R1, R0
ADD             R0, R4, #0x1A0
BL              sub_4A7390
SUB             R4, R0, #0x1A0
ADD             R1, R0, #0x20 ; ' '
ADD             R0, R0, #0x24 ; '$'
STR             R0, [R1]
STR             R0, [R0,#8]
STR             R0, [R0,#4]
LDR             R0, =dword_6CEC98
STR             R5, [R4,#0x1D4]
STR             R4, [R0]
STRB            R7, [R4,#0x1E3]
LDR             R0, [R6]
BL              sub_5EE458
BL              sub_50EFA0
STR             R0, [R4,#0x1D8]
STRB            R7, [R4,#0x1E1]
LDRH            R0, [R0,#0x18]
TST             R0, #0xC
BNE             loc_21CBF8
MOV             R0, R0,LSL#27
MOV             R5, #1
MOVS            R0, R0,LSR#31
BEQ             loc_21CBE4
CMP             R0, #1
BNE             loc_21CBF8
B               loc_21CC44
LDR             R0, [R6]
BL              sub_52FB1C
LDRB            R0, [R0,#0x495]
MOV             R0, R5,LSL R0
STRB            R0, [R4,#0x1E1]
LDR             R1, [R4,#0x1C0]
ADD             R0, R4, #0x1A0
LDR             R1, [R1,#4]
STR             R1, [R4,#0x1A4]
LDR             R1, [R4,#0x1C0]
STR             R1, [R4,#0x1A8]
LDR             R1, [R1,#4]
STR             R0, [R1,#8]
LDR             R1, [R4,#0x1C0]
STR             R0, [R1,#4]
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1,#8]
BLX             R1
STRB            R7, [R4,#0x1E0]
STRB            R7, [R4,#0x1E2]
STR             R7, [R4,#0x1DC]
BL              sub_2C8400
MOV             R0, R4
POP             {R4-R8,PC}
NOP
BL              sub_48004C
CMP             R0, #0
STRBNE          R5, [R4,#0x1E1]
BNE             loc_21CBF8
LDR             R0, =0x10D4D8
LDR             R1, [R6]
ADD             R0, R0, R1; loc_10D4D8
BL              sub_5EC730
CMP             R0, #0
NOP
BNE             loc_21CC80
LDRB            R0, [R4,#0x1E1]
ORR             R0, R0, #1
STRB            R0, [R4,#0x1E1]
LDR             R0, [R6]
LDR             R1, =0x10E0A4
ADD             R0, R0, R1; loc_10E0A4
BL              sub_5EC730
CMP             R0, #0
LDRBEQ          R0, [R4,#0x1E1]
ORREQ           R0, R0, #2
BNE             loc_21CBF8
B               loc_21CBF4
