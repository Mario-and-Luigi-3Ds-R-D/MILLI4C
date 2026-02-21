PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R0, #1
SUB             SP, SP, #0x10
MOV             R10, R0
STRB            R0, [R4,#4]
LDR             R0, =off_6BB7A8
MOV             R5, R1
ADD             R3, R4, #8
STR             R0, [R4]
LDM             R1, {R0-R2}
MOV             R8, #0
LDR             R9, =off_6CDC90
STM             R3, {R0-R2}
STRB            R8, [R4,#0x18]
STRB            R10, [R4,#0x19]
LDR             R2, [R9]
ADD             R1, R2, #0x12400
ADD             R1, R1, #0x364
LDR             R0, [R1,#4]
CMP             R0, #0
LDR             R3, [R0]
STR             R3, [R1,#4]
LDR             R3, [R1,#8]
SUB             R3, R3, #1
STR             R3, [R1,#8]
BEQ             loc_1F8EF8
LDR             R7, [R2,#0x30]
BL              sub_14F198
MOV             R6, R0
MOV             R2, #0
MOV             R1, R7
STRB            R8, [R0,#0x3F8]
BL              sub_14E6E0
MOV             R1, #1
MOV             R0, R6
BL              sub_14C450
MOV             R1, #0
MOV             R0, R6
STRB            R10, [R6,#0xF1]
BL              sub_14C3E8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R6
BL              sub_14C548
LDR             R7, =dword_6D1F40
MOV             R0, R6
BL              sub_5C5724
MOV             R8, R0
MOV             R0, R7
BL              sub_546DB0
MUL             R0, R0, R8
MOV             R1, R0,LSR#16
MOV             R0, R6
BL              sub_14F01C
LDR             R1, [R9]
MOV             R0, R6
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2700
LDR             R1, [R1]
LDR             R1, [R1,#0x88]
STR             R1, [R6,#0x3F4]
STR             R0, [R4,#0x14]
LDR             R1, [R9]
VLDR            S0, [R5,#8]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2700
VLDM            R5, {S1-S2}
LDR             R1, [R1]
ADD             R1, R1, #0x184
VLDM            R1, {S3-S5}
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x30+var_28]
VSTMEA          SP, {S1-S2}
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R10,PC}
