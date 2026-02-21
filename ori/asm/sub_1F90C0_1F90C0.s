PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R9, R0
LDRD            R6, R7, [R9,#0x14]
CMP             R6, R7
ADDNE           R4, R6, #0xC
CMPNE           R4, R7
BEQ             loc_1F92DC
LDR             R11, =0x2AAAAAAB
ADD             R8, SP, #0x38+var_34
SUB             R1, R4, R6
LDR             R0, =dword_6D1F40
SMULL           R2, R1, R11, R1
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R1, R1, #1
UXTH            R5, R1
BL              sub_546DB0
MOV             R1, R0
LDR             R3, [R4]
MUL             R2, R1, R5
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_34]
STR             R3, [SP,#0x38+var_38]
LDR             R3, [R4,#8]
MOV             R2, R2,LSR#16
ADD             R1, SP, #0x38+var_34
ADD             R2, R2, R2,LSL#1
STR             R3, [SP,#0x38+var_30]
STR             R1, [R3]
ADD             R5, R6, R2,LSL#2
STR             R1, [R4,#8]
LDR             R0, [R4]
LDR             R2, [R5]
CMP             R0, R2
BEQ             loc_1F91DC
ADD             R3, R4, #4
CMP             R1, R3
BNE             loc_1F9328
CMP             R0, #0
BEQ             loc_1F9198
LDR             R1, =off_6CDC90
LDR             R1, [R1]
STR             R0, [SP,#0x38+var_28]
ADD             R10, R1, #0x12000
ADD             R10, R10, #0x750
BL              sub_14F3EC
LDR             R0, [SP,#0x38+var_28]
LDR             R1, [R10,#4]
STR             R1, [R0]
STR             R0, [R10,#4]
LDR             R0, [R10,#8]
ADD             R0, R0, #1
STR             R0, [R10,#8]
LDR             R3, [R5]
ADD             R1, R5, #4
ADD             R0, R4, #4
CMP             R1, R0
MOV             R2, R4
STR             R3, [R4]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_1F91DC
LDR             R12, [R0]
LDR             R3, [R0,#4]
STR             R3, [R12,#4]
STR             R12, [R3]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R5]
LDR             R1, [SP,#0x38+var_38]
CMP             R0, R1
BEQ             loc_1F9278
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_1F9340
CMP             R0, #0
BEQ             loc_1F9238
LDR             R1, =off_6CDC90
LDR             R1, [R1]
STR             R0, [SP,#0x38+var_28]
ADD             R10, R1, #0x12000
ADD             R10, R10, #0x750
BL              sub_14F3EC
LDR             R0, [SP,#0x38+var_28]
LDR             R1, [R10,#4]
STR             R1, [R0]
STR             R0, [R10,#4]
LDR             R0, [R10,#8]
ADD             R0, R0, #1
STR             R0, [R10,#8]
LDR             R2, [SP,#0x38+var_38]
ADD             R1, SP, #0x38+var_34
ADD             R0, R5, #4
CMP             R1, R0
STR             R2, [R5]
LDRNE           R2, [SP,#0x38+var_30]
CMPNE           R2, R0
BEQ             loc_1F9278
MOV             R3, R2
LDM             R0, {R2,R12}
STR             R12, [R2,#4]
STR             R2, [R12]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [SP,#0x38+var_30]
STR             R1, [R0]
LDR             R0, [SP,#0x38+var_30]
CMP             R0, R8
BNE             loc_1F92C4
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_1F92C4
MOV             R10, R0
LDR             R0, =off_6CDC90
LDR             R0, [R0]
ADD             R5, R0, #0x12000
ADD             R5, R5, #0x750
MOV             R0, R10
BL              sub_14F3EC
LDR             R0, [R5,#4]
STR             R0, [R10]
STR             R10, [R5,#4]
LDR             R0, [R5,#8]
ADD             R0, R0, #1
STR             R0, [R5,#8]
LDRD            R0, R1, [SP,#0x38+var_34]
ADD             R4, R4, #0xC
CMP             R4, R7
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F90E8
MOV             R3, R3,LSL#8
BIC             R2, R2, #0xFF00
AND             R3, R3, #0xFF00
LDRD            R0, R1, [R9,#0x14]
ORR             R2, R2, R3
STRH            R2, [SP,#0x38+var_38]
CMP             R0, R1
BEQ             loc_1F9310
LDR             R2, [R0]
LDR             R2, [R2,#0x3F4]
CMP             R2, #0
ADDEQ           R0, R0, #0xC
BEQ             loc_1F92F4
LDR             R0, [R0]
STR             R0, [R9,#0x20]
ADD             R0, R0, #0x24 ; '$'
VLDM            R0, {S0-S2}
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
LDR             R2, [R3]
STR             R1, [R2,#4]
STR             R2, [SP,#0x38+var_34]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_1F9198
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1F9238
