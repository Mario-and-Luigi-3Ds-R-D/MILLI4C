PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R5, R2
STR             R3, [R0,#8]
LDR             R2, [R3,#0xC]
MOV             R4, R0
ADD             R0, R0, #0x10
MOV             R6, R3
STR             R2, [R0,#0x18]
BL              sub_10D2AC
MOV             R7, #0
LDR             R0, =off_6BFDFC
STR             R7, [SP,#0x38+var_34]
STR             R7, [SP,#0x38+var_30]
STR             R7, [SP,#0x38+var_2C]
STR             R7, [SP,#0x38+var_28]
STR             R7, [SP,#0x38+var_24]
LDR             R2, [R0]; off_6BFE3C
MOV             R8, SP
MOV             R1, R5
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R2,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R0,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [SP,R2]
MOV             R2, #1
ADD             R0, SP, #0x38+var_34
STR             R7, [SP,#0x38+var_28]
STR             R7, [SP,#0x38+var_24]
STR             R7, [SP,#0x38+var_30]
STR             R7, [SP,#0x38+var_2C]
BL              sub_10D7A8
ANDS            R0, R0, #0x80000000
BPL             loc_1E25EC
LDR             R0, [SP,#0x38+var_34]
BICS            R0, R0, #1
BEQ             loc_1E25E0
LDR             R0, [SP,#0x38+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x38+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R7, [SP,#0x38+var_34]
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R8,PC}
ADD             R0, R8, #4
ADD             R1, SP, #0x38+var_20
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R6]
LDR             R5, [SP,#0x38+var_20]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R2, R0
STR             R0, [R4,#4]
MOV             R3, R5
ADD             R0, R8, #4
ADD             R1, SP, #0x38+var_20
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x38+var_34]
BICS            R0, R0, #1
BEQ             loc_1E266C
LDR             R0, [SP,#0x38+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x38+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R7, [SP,#0x38+var_34]
LDR             R0, [R4,#4]
STR             R0, [R4,#0xC]
LDRH            R5, [R0]
STR             R7, [R4]
CMP             R5, #0
BEQ             loc_1E2718
MOV             R3, #0
LDR             R1, [R6]
MOV             R0, R5,LSL#3
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_1E26B4
LDR             R1, =sub_50E408
MOV             R3, R5
MOV             R2, #8
BLX             sub_1002F4
CMP             R5, #0
MOV             R1, #0
MOVHI           R3, #2
STR             R0, [R4]
BLS             loc_1E2718
LDR             R2, [R4,#0xC]
LDRH            R12, [R2]
CMP             R12, R1
MOVLS           R2, #0
BLS             loc_1E26E8
ADD             R12, R1, R1,LSL#1
ADD             R12, R3, R12,LSL#3
ADD             R2, R2, R12
ADD             R1, R1, #1
LDRB            R2, [R2,#4]
UXTH            R1, R1
CMP             R2, #0
LDRB            R2, [R0,#4]
ORRNE           R2, R2, #0x40 ; '@'
BICEQ           R2, R2, #0x40 ; '@'
AND             R2, R2, #0x7F
STRB            R2, [R0,#4]
CMP             R1, R5
ADD             R0, R0, #8
BCC             loc_1E26C8
LDR             R0, [SP,#0x38+var_34]
BICS            R0, R0, #1
BEQ             loc_1E2740
LDR             R0, [SP,#0x38+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x38+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R7, [SP,#0x38+var_34]
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #1
POP             {R4-R8,PC}
