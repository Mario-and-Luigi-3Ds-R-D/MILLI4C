PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0x44
LDR             R0, [R0,#0x184]
CMP             R0, #0
BEQ             loc_1498A4
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BNE             loc_149A14
LDR             R1, [R4,#0x198]
CMP             R1, #0
BEQ             loc_14995C
LDR             R3, [R4,#0x19C]
TST             R3, #0xFF
BEQ             loc_1498E4
ADD             R2, R4, #0x1A0
MOV             R0, SP
BL              sub_1491B8
LDMFD           SP, {R0-R3,R5-R7,R12}
ADD             R8, R4, #0x7C ; '|'
STM             R8, {R0-R3,R5-R7,R12}
ADD             R5, SP, #0x68+var_48
LDM             R5, {R0-R3}
ADD             R5, R4, #0x9C
STM             R5, {R0-R3}
LDR             R0, [R4,#0x19C]
TST             R0, #0x10000
BEQ             loc_14995C
LDR             R0, [R4,#0x198]
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
CMP             R0, #0
BEQ             loc_149924
LDR             R0, [R4,#0x198]
ADD             R5, R4, #0x10
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
STR             R0, [R5]
B               loc_14995C
LDR             R0, [R4,#0x198]
LDR             R1, [R0]
LDR             R1, [R1,#0x50]
BLX             R1
CMP             R0, #0
BEQ             loc_14995C
LDR             R6, =off_6CE970
LDR             R5, =0x1361AC
LDR             R0, [R6]
ADD             R0, R0, R5; loc_1361AC
BL              sub_592E84
LDR             R1, [R6]
ADD             R1, R1, R5; loc_1361AC
STR             R1, [R4,#0x10]
LDRB            R0, [R4,#0x1B8]
CMP             R0, #0
BEQ             loc_149A14
MOV             R6, #0
ADD             R5, R4, #0x1D0
ADD             R7, R4, #0x218
LDR             R8, [R5,#0x10]
CMP             R8, #0
BEQ             loc_1499F0
LDRB            R10, [R5,#0x20]
MOV             R0, #0x300
STR             R0, [SP,#0x68+var_68]
ADD             R9, SP, #0x68+var_30
ADD             R11, R5, #0x14
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x68+var_60
MOV             R0, R8
BL              sub_5C4A88
MOV             R2, R11
ADD             R1, SP, #0x68+var_60
MOV             R0, R9
BL              sub_1169FC
LDRB            R0, [R8,#0xF8]
MOV             R1, R9
MOV             R2, R10
CMP             R0, #0
MOVNE           R3, #2
MOVEQ           R3, #0
MOV             R0, R1
BL              sub_14C73C
ADD             R1, R6, R6,LSL#1
LDM             R0, {R2,R3,R12}
ADD             R0, R4, R1,LSL#2
ADD             R0, R0, #0x134
STM             R0, {R2,R3,R12}
B               loc_149A00
LDRB            R0, [R4,#0x1B8]
MOV             R1, #1
BIC             R0, R0, R1,LSL R6
STRB            R0, [R4,#0x1B8]
ADD             R0, R6, #1
ADD             R5, R5, #0x24 ; '$'
CMP             R5, R7
AND             R6, R0, #0xFF
BNE             loc_149974
MOV             R0, R4
BL              sub_532C04
MOV             R8, R0
LDR             R0, [R4,#0x184]
ADD             R5, R4, #0x100
CMP             R0, #0
BEQ             loc_149A44
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BNE             loc_149B00
LDR             R0, [R4,#0x198]
CMP             R0, #0
BEQ             loc_149B00
LDR             R1, [R4,#0x19C]
TST             R1, #0x10000
BEQ             loc_149B00
LDRB            R1, [R5,#0x70]
CMP             R1, #0
BEQ             loc_149A88
ADD             R1, R4, #0xDC
ADD             R11, R0, #0x68 ; 'h'
LDM             R1, {R1-R3,R6,R7,R9,R10,R12}
ADD             R0, R0, #0x88
STM             R11, {R1-R3,R6,R7,R9,R10,R12}
ADD             R1, R4, #0xFC
LDM             R1, {R1-R3,R12}
STM             R0, {R1-R3,R12}
LDR             R10, =off_6CE970
LDR             R9, =0x1361AC
LDR             R0, [R4,#0x10]
LDR             R1, [R10]
ADD             R1, R1, R9; loc_1361AC
CMP             R0, R1
BNE             loc_149B00
LDR             R0, [R4,#0x198]
LDR             R1, [R0]
LDR             R1, [R1,#0x50]
BLX             R1
CMP             R0, #0
BEQ             loc_149B00
LDR             R0, [R4,#0x198]
LDR             R1, [R0]
LDR             R1, [R1,#0x50]
BLX             R1
MOV             R6, R0
LDR             R0, [R10]
MOV             R1, #2
ADD             R0, R0, R9; loc_1361AC
BL              sub_5F163C
LDR             R7, [R0]
LDR             R0, [R10]
MOV             R1, #3
ADD             R0, R0, R9; loc_1361AC
BL              sub_5F163C
LDR             R1, [R0]
STR             R7, [R6,#0xF0]
STR             R1, [R6,#0xF4]
LDRH            R1, [R4,#0xE]
MOV             R0, R4
TST             R1, #1
BEQ             loc_149B1C
LDRB            R1, [R5,#0x6E]
CMP             R1, #0
BEQ             loc_149B88
LDRB            R1, [R5,#0x72]
CMP             R1, #0
BEQ             loc_149B38
BL              sub_532B54
CMP             R0, #0
NOP
BNE             loc_149B88
LDR             R0, [R4,#0x184]
CMP             R0, #0
BEQ             loc_149B50
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDRB            R0, [R5,#0x6E]
CMP             R0, #0
LDRNE           R5, [R4,#0x198]
CMPNE           R5, #0
BEQ             loc_149B88
MOV             R1, R4
MOV             R0, R5
BL              sub_14C98C
LDR             R0, [R4,#0x198]
CMP             R0, R5
BNE             loc_149B88
MOV             R0, #0
STR             R0, [R4,#0x198]
STR             R0, [R4,#0x10]
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, R8
POP             {R4-R11,PC}
