PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#4]
MOV             R1, #1
LDR             R7, =off_6CE970
ADD             R0, R0, #0x12C00
ADD             R0, R0, #0x1C
MOV             R3, #0
STRB            R1, [R0]
LDR             R0, [R4,#4]
MOV             R2, R3
ADD             R5, R0, #0x40 ; '@'
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x38 ; '8'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_2915D0
LDR             R1, [R4,#4]
LDR             R1, [R1,#0x3C]
BL              sub_2832A8
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_291750
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2915FC
BL              sub_283340
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R1, [R4,#4]
MOV             R0, R1
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x3EC
LDR             R0, [R0,#0x40]
LDR             R1, [R1]
STR             R1, [R0,#0x2C]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_282A70
LDR             R0, [R7]
MOV             R3, #0
ADD             R5, R4, #8
ADD             R1, R0, #0x68 ; 'h'
MOV             R6, SP
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_29165C
LDR             R1, =off_6BC4BC
STM             R0, {R1,R4}
MOV             R7, #0
STR             R0, [SP,#0x20+var_20]
ADD             R0, R6, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_291688
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x20+var_20]
LDR             R0, [R5]
CMP             R0, R1
BEQ             loc_2916F8
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_29176C
CMP             R0, #0
BEQ             loc_2916BC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x20+var_20]
STR             R0, [R5],#4
ADD             R0, R6, #4
CMP             R0, R5
LDRNE           R1, [SP,#0x20+var_18]
CMPNE           R1, R5
BEQ             loc_2916F8
MOV             R3, R1
LDM             R5, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R5,#4]
STR             R5, [R3]
STR             R5, [SP,#0x20+var_18]
STR             R0, [R5]
LDR             R0, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_291734
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_291734
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #0
STRB            R0, [R4,#0x14]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_2915FC
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_2916BC
