PUSH            {R4-R10,LR}
ADD             R4, R0, #0x14
MOV             R8, R0
LDM             R4, {R4,R6}
CMP             R4, R6
MOVNE           R7, #0
MOVNE           R9, #4
BEQ             loc_1F93F8
LDR             R5, [R4]
LDRB            R0, [R5,#0x3F8]
CMP             R0, #1
BEQ             loc_1F93A4
CMP             R0, #3
BNE             loc_1F93EC
B               loc_1F93DC
ADD             R0, R5, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1F93EC
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R5
STRB            R7, [R5,#0x3F8]
BL              sub_14C548
NOP
NOP
B               loc_1F93EC
MOV             R0, R5
BL              sub_5C4A1C
CMP             R0, #0
STRBEQ          R9, [R5,#0x3F8]
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_1F9388
ADD             R0, R8, #0x14
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_1F941C
LDR             R1, [R0]
LDRB            R1, [R1,#0x3F8]
CMP             R1, #4
ADDNE           R0, R0, #0xC
BNE             loc_1F9400
LDR             R10, =off_6CDC90
CMP             R0, R5
MOV             R6, R0
ADDNE           R4, R6, #0xC
CMPNE           R4, R5
BEQ             loc_1F94E0
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F8]
CMP             R1, #4
BEQ             loc_1F94D4
LDR             R9, [R6]
CMP             R9, R0
BEQ             loc_1F94D0
LDR             R1, [R6,#8]
ADD             R2, R6, #4
CMP             R1, R2
BNE             loc_1F958C
CMP             R9, #0
BEQ             loc_1F9494
LDR             R0, [R10]
ADD             R7, R0, #0x12000
ADD             R7, R7, #0x750
MOV             R0, R9
BL              sub_14F3EC
LDR             R0, [R7,#4]
STR             R0, [R9]
STR             R9, [R7,#4]
LDR             R0, [R7,#8]
ADD             R0, R0, #1
STR             R0, [R7,#8]
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R3, [R6]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_1F94D0
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_1F9434
LDR             R5, [R8,#0x18]
CMP             R6, R5
BEQ             loc_1F9578
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R6
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_1F9574
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F9560
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_1F9560
LDR             R0, [R10]
ADD             R7, R0, #0x12000
ADD             R7, R7, #0x750
MOV             R0, R9
BL              sub_14F3EC
LDR             R0, [R7,#4]
STR             R0, [R9]
STR             R9, [R7,#4]
LDR             R0, [R7,#8]
ADD             R0, R0, #1
STR             R0, [R7,#8]
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F9510
STR             R6, [R8,#0x18]
LDRD            R0, R1, [R8,#0x14]
CMP             R0, R1
MOVEQ           R0, #1
STRBEQ          R0, [R8,#0x24]
POP             {R4-R10,PC}
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_1F9494
