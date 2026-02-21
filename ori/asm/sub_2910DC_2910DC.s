PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [R0,#4]
SUB             SP, SP, #0x10
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
BEQ             loc_291114
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
BEQ             loc_291124
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#0x4C]
BL              sub_2877D4
LDR             R5, [R4,#4]
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
NOP
BEQ             loc_29116C
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
NOP
BNE             loc_29116C
LDR             R0, [R4,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_2912AC
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R5, R4, #8
MOV             R6, SP
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2911A4
LDR             R1, =off_6BC4A0
STM             R0, {R1,R4}
MOV             R4, #0
STR             R0, [SP,#0x20+var_20]
ADD             R0, R6, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2911D0
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x20+var_20]
LDR             R0, [R5]
CMP             R0, R1
BEQ             loc_291240
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_291290
CMP             R0, #0
BEQ             loc_291204
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x20+var_20]
STR             R0, [R5],#4
ADD             R0, R6, #4
CMP             R0, R5
LDRNE           R1, [SP,#0x20+var_18]
CMPNE           R1, R5
BEQ             loc_291240
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
MOV             R1, R4
BLX             R2
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_29127C
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_29127C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_291204
ADD             SP, SP, #0x10
POP             {R4-R6,LR}
B               sub_292EFC
