PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC
MOV             R7, R0
LDR             R0, [R0,#0x44]
LDR             R4, [R7,#0x40]
CMP             R0, R4
MOVNE           R6, #1
MOVNE           R8, #3
BEQ             loc_2843C8
LDR             R5, [R4]
LDRB            R0, [R5,#0x3FC]
CMP             R0, #0
BEQ             loc_284390
CMP             R0, #2
BNE             loc_2843B8
B               loc_2843A4
ADD             R0, R5, #0x1E4
BL              sub_5F19B8
CMP             R0, #0
STRBEQ          R6, [R5,#0x3FC]
B               loc_2843B8
ADD             R0, R5, #0x35C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBGE          R8, [R5,#0x3FC]
LDR             R0, [R7,#0x44]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_284374
ADD             R6, R7, #0x40 ; '@'
ADD             R5, SP, #0x28+var_24
LDM             R6, {R6,R9}
MOV             R0, #0
CMP             R6, R9
BEQ             loc_28441C
LDR             R0, [R6]
ADD             R1, SP, #0x28+var_24
STR             R0, [SP,#0x28+var_28]
ADD             R0, R6, #4
STR             R0, [SP,#0x28+var_24]
LDR             R2, [R6,#8]
MOV             R0, #1
STR             R2, [SP,#0x28+var_20]
STR             R1, [R2]
STR             R1, [R6,#8]
LDR             R1, [SP,#0x28+var_28]
LDRB            R1, [R1,#0x3FC]
CMP             R1, #3
MOVNE           R4, #1
BNE             loc_284420
MOV             R4, #0
CMP             R0, #0
BEQ             loc_284460
LDR             R0, [SP,#0x28+var_20]
CMP             R0, R5
BNE             loc_284454
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_284454
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R4, #0
ADDNE           R6, R6, #0xC
BNE             loc_2843D4
CMP             R6, R9
BEQ             loc_28458C
ADD             R4, R6, #0xC
CMP             R4, R9
MOV             R8, R6
ADDNE           R6, SP, #0x28+var_24
BEQ             loc_284588
LDR             R0, [R4]
ADD             R1, SP, #0x28+var_24
STR             R0, [SP,#0x28+var_28]
ADD             R0, R4, #4
STR             R0, [SP,#0x28+var_24]
LDR             R2, [R4,#8]
STR             R2, [SP,#0x28+var_20]
STR             R1, [R2]
STR             R1, [R4,#8]
LDR             R0, [SP,#0x28+var_28]
LDRB            R0, [R0,#0x3FC]
CMP             R0, #3
LDR             R0, [SP,#0x28+var_20]
MOVNE           R5, #1
MOVEQ           R5, #0
CMP             R0, R6
BNE             loc_2844EC
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_2844EC
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x28+var_24]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_28457C
LDR             R0, [R8]
LDR             R1, [R4]
CMP             R0, R1
BEQ             loc_284578
LDR             R2, [R8,#8]
ADD             R3, R8, #4
CMP             R2, R3
BNE             loc_284614
CMP             R0, #0
BEQ             loc_28453C
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R8, #4
CMP             R1, R0
STR             R3, [R8]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_284578
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R8, R8, #0xC
ADD             R4, R4, #0xC
CMP             R4, R9
BNE             loc_284488
MOV             R6, R8
LDR             R5, [R7,#0x44]
CMP             R6, R5
BEQ             loc_28460C
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R6
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_284608
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_2845F4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2845F4
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2845BC
STR             R6, [R7,#0x44]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
LDR             R1, [R3]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_28453C
